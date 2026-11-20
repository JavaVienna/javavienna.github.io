# java.wien — Roq static site

A [Roq](https://iamroq.dev) (Quarkus) static site that reproduces the **public** pages
of the private `jug-vienna-raffle` Vaadin admin app. The admin app stays private; this
project publishes a static site to java.wien.

## The "export bridge" pattern

```
raffle Postgres DB  --(../exporter, read-only JDBC)-->  markdown + JSON + images
                                                              |  (rsync into this repo)
                                                              v
                                                   Roq (Qute)  -->  target/roq/ (static HTML)
```

- The exporter lives in **`../exporter`** (outside this repo) and is the **only** thing
  that touches the database. It writes one markdown file per event/speaker, a little JSON
  for the list pages, and the images, into `../exporter/out/`; `../exporter/02_sync.sh`
  rsyncs that in here. The DB is the source of truth; the synced markdown is a reviewable
  artifact (look at `git diff`), not hand-edited.
- `roq generate` builds the site **from the committed content** — it needs **no** database.
  So CI / GitHub Pages never see the private DB. The generated app has no JDBC driver.

## Layout

```
java-wien/
├── pom.xml                         # Quarkus 3.40.1 + quarkus-roq 2.2.0 + quarkus-roq-generator
├── content/                        # pages (all synced-or-authored, committed)
│   ├── index.html                  # Welcome / home
│   ├── events.html                 # events list (year-grouped cards)
│   ├── speakers.html sponsors.html companies.html
│   ├── impressum.md privacy-policy.md
│   ├── events/<slug>.md            # ONE markdown file per event  (synced from ../exporter)
│   └── speakers/<slug>.md          # ONE markdown file per speaker (synced from ../exporter)
├── data/                           # list-page JSON (synced, committed)
│   ├── eventsByYear.json           # events grouped by year, newest first (events list)
│   ├── home.json                   # 3 most recent past events + next upcoming (home)
│   ├── speakersList.json           # slim speaker cards, sorted by talk count (speakers list)
│   └── sponsors.json               # (companies has NO json — list is the markdown collection)
├── content/companies/<slug>.md     # company detail AND the companies list source (collection)
├── templates/
│   ├── layouts/{main,page,event,speaker,company}.html
│   └── tags/{navItem,companySpeakerCard,companyCard}.html
├── public/img/  public/css/site.css
└── src/main/resources/application.properties   # site.url + http.port + companies collection
    src/main/java/wien/java/EventsByYear.java     # @DataMapping ARRAY_FILE -> cdi:eventsByYear
    src/main/java/wien/java/Home.java             # @DataMapping OBJECT_FILE -> cdi:home
    src/main/java/wien/java/SpeakersList.java      # @DataMapping ARRAY_FILE -> cdi:speakersList
    src/main/java/wien/java/Sponsors.java          # @DataMapping ARRAY_FILE -> cdi:sponsors
    src/main/java/wien/java/CompanyView.java       # CDI bean: sort + Hall-of-Fame filter for
                                                  #   the companies list (cdi:companyView)
```

> **Detail pages = markdown, list pages = data beans.** Each `content/events/<slug>.md` /
> `content/speakers/<slug>.md` has `layout: event` / `layout: speaker` in its front matter
> and renders at `/events/<slug>/` etc. (structured fields → `page.data.*`, prose body →
> `{#insert /}`). The list/home pages read the pre-ordered `eventsByYear.json` / `home.json`
> / `speakersList.json` beans — deterministic, independent of Roq collection sort order.

## Helper scripts (demo)

Numbered scripts wrap the commands below (they pin Java 21 and the right ports via
`_env.sh`). Run from this directory:

| Script | Does |
|--------|------|
| `./01_start_docker.sh` | start the raffle Postgres + check the raffle app on :8080 |
| `./02_dev_server.sh` | Roq dev server, live reload, http://localhost:8099 |
| `./03_generate_static_files.sh` | generate the static site into `target/roq/` |
| `./05_preview_static.sh` | serve `target/roq/` as plain files on :8097 |
| `./99_stop.sh` | stop the Roq/preview servers + raffle Postgres |

Refreshing content from the DB lives in **`../exporter`** (not here):
`(cd ../exporter && ./01_export.sh && ./02_sync.sh)`.

Typical demo flow: `01` → `02` (show live) → `../exporter` export+sync → review `git diff`
→ `03` → `05`.

## Commands (what the scripts run)

All commands run from this `java-wien/` directory. **Quarkus/Roq need Java 21** (not 25),
so set `JAVA_HOME` for the Maven commands:

```bash
export JAVA_HOME=~/.sdkman/candidates/java/21.0.9-tem
```

### 1. Refresh content from the DB (in ../exporter)

```bash
(cd ../exporter && ./01_export.sh && ./02_sync.sh)
```

This runs the read-only exporter (markdown + JSON + images into `../exporter/out/`) and
rsyncs it into this repo's `content/`, `data/`, `public/img/`. See `../exporter/README.md`.
Only **`event.status='PUBLISHED'`** events and **`speaker.active=true`** speakers are
exported. Review the result with `git diff` before regenerating.

### 2. Dev server (live reload) — port 8099, NOT 8080

```bash
mvn quarkus:dev -Dquarkus.http.port=8099
```

The raffle app owns 8080, so Roq uses **8099**. Open http://localhost:8099/.
This reads the committed `data/*.json`; it does not touch the DB.

### 3. Static generate -> target/roq/

Use **environment variables** (not `-D`) so the setting reaches the forked runner process:

```bash
QUARKUS_ROQ_GENERATOR_BATCH=true QUARKUS_HTTP_PORT=8099 mvn -q -DskipTests package quarkus:run
```

In batch mode `quarkus:run` renders every page and exits ("Roq generation succeeded ..."
then "java-wien stopped"), writing the static site to `target/roq/`. It uses port 8099 for
its internal render server — keep it off 8080.

Output: `index.html`, `/events/` + one folder per published event, `/speakers/` + one
folder per active speaker, `/sponsors/`, `/companies/`, `/impressum/`, `/privacy-policy/`,
plus `/img/` and `/css/`.

## How the content drives pages

- **Detail pages = markdown files.** `content/events/<slug>.md` and
  `content/speakers/<slug>.md` each set `layout: event` / `layout: speaker` in front matter;
  Roq renders one page per file at `/events/<slug>/` and `/speakers/<slug>/`. Structured
  fields (talks, sponsors, career, socials) are front matter → `page.data.*`; the prose body
  (event description / speaker bio) renders via `{#insert /}`.
- **List/home pages = data beans.** `@DataMapping(type=ARRAY_FILE/OBJECT_FILE)` Java records
  expose `data/*.json` as `cdi:eventsByYear.list`, `cdi:home.*`, `cdi:speakersList.list`,
  `cdi:sponsors.list`. All pre-ordered by the exporter.
- **Companies** is the exception: no JSON. `content/companies/*.md` is a Roq collection; the
  list page iterates it, with sort + Hall-of-Fame filter done in the `CompanyView` CDI bean
  (`cdi:companyView.sortedCompanies` / `.hallOfFameCompanies`; the bean `@Inject`s
  `Instance<Site>` and reads `site.get().collections().get("companies")`). Tabs are CSS-only.
- `slug` = kebab-case of title/name + `-<id>` (stable, unique), and is the file name.

## Gotchas discovered

1. **Roq 2.2.0 needs Quarkus 3.40.1 and Java 21.** Java 25 (the default here) is not
   supported by this Quarkus build. The exporter also pins `//JAVA 21`.
2. **Roq uses port 8080 by default for both dev and the generate render server.** The
   raffle app owns 8080, so always pass port 8099. If the render server hits a busy 8080
   every page fails with a 404.
2b. **For `generate`, pass batch mode as an ENV VAR, not `-D`.**
   `QUARKUS_ROQ_GENERATOR_BATCH=true ... mvn package quarkus:run` works reliably;
   `-Dquarkus.roq.generator.batch=true` did not always reach the forked runner child,
   which then started the server and **hung** instead of generating-and-exiting.
3. **`site.title` / `site.description` are NOT `application.properties` keys** — they come
   from the **index page frontmatter** (`content/index.html`). Putting them in properties
   fails the build with `SRCFG00050 ... does not map to any root`. Only operational keys
   like `site.url` live in properties.
4. **Layout YAML frontmatter must be valid YAML.** The `{@...Page page}` type declarations
   go **after** the closing `---`, never inside the frontmatter block. A layout with no
   real frontmatter still needs an empty `---\n---` header.
5. **Roq user tags don't get `site` automatically.** Tags are plain template bodies;
   params are referenced by name (`{href}`, not `{it.href}`), and anything the tag needs
   from the outer scope (like `site`) must be passed explicitly (`{#navItem ... site=site /}`).
   Tags also do not use an `{#include}` wrapper.
6. **Markdown front matter must include every expected key (null is OK).** Qute throws
   "property not found" on a `JsonObject` for an *absent* key — even inside `{#if}`. So the
   exporter does NOT use `NON_NULL`; it emits all fields on every file. (This is also why
   list ordering uses pre-computed data beans rather than a Roq collection, which has no
   reliable sort and no `.filter`/`.take` in Qute.)
6b. **Prose body uses `whitespace-pre-line`.** DB descriptions are plain text with
   meaningful line breaks; markdown collapses single newlines and the Tailwind Play CDN does
   not load the `prose` typography plugin. The event/speaker layouts wrap `{#insert /}` in a
   `whitespace-pre-line` container to keep line breaks plus markdown inline formatting.
7. **Images: companies/speakers reference `*_image_uuid` (and external `*_url`), NOT
   `*_image_id`.** In this DB **no** company has a `logo_image_id`; logos live in
   `logo_image_uuid` or an external `logo_url` (meetup/linkedin CDN). The exporter resolves
   by UUID first (download from `/api/images/<uuid>`), then falls back to the external URL.
   An early version only read `*_image_id` and produced null logos.
8. **`generate` must not need the DB.** Verified: the built app has no postgres/jdbc
   dependency; `target/roq/` builds purely from committed `data/*.json` + `public/img/`.

## Deployment

The site auto-deploys to **GitHub Pages** on every push to `main`. No manual step, no DB, no
secrets in CI — it builds from the committed `content/` + `data/` + `public/`.

**Repo / host:** `JavaVienna/javavienna.github.io`, served at the custom domain
**https://www.java.wien** (matches `site.url` in `application.properties`).

**What runs:** `.github/workflows/deploy.yml` (triggers: push to `main`, or manual
*Run workflow* / `workflow_dispatch`). Two jobs:

1. **build** — checkout → set up **Java 21** (temurin, maven cache) → generate the static
   site with `QUARKUS_ROQ_GENERATOR_BATCH=true mvn -B -q -DskipTests package quarkus:run`
   (batch mode as an **env var**, not `-D` — see gotcha 2b) → `touch target/roq/.nojekyll`
   (so Pages serves the artifact as-is, no Jekyll) → `actions/upload-pages-artifact@v3`
   with `path: target/roq`.
2. **deploy** — `actions/deploy-pages@v4` publishes that artifact to the `github-pages`
   environment. The live URL shows up as the deploy job's output.

A run takes ~1 minute. Concurrency is capped at one deploy (`group: pages`,
`cancel-in-progress: false`), so overlapping pushes queue rather than cancel.

**Release flow (the normal way to ship a content change):**

```bash
(cd ../exporter && ./01_export.sh && ./02_sync.sh)   # refresh content/ data/ img/ from the DB
git -C . diff                                         # review what changed
git add content/events content/speakers content/companies public/img data/*.json
git commit -m "Refresh site content from the raffle DB"
git push origin main                                  # ← triggers build + deploy
gh run watch                                          # optional: follow the Action
```

**Rollback:** `git revert <bad-commit> && git push origin main` — the Action rebuilds and
redeploys the previous content. (There is no separate "deploy" artifact to roll back; the
source commit *is* the deploy.)

**One-time repo setting (not in git):** Settings → Pages → *Source* must be **GitHub Actions**
(not "Deploy from a branch"), and the custom domain `www.java.wien` is set there. These live in
the repo's Pages settings, not in a committed file — there is intentionally **no** `CNAME` file
and `.nojekyll` is added by CI, not committed.
