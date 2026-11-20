/** Tailwind config for the java.wien static site.
 *  Scans the Qute templates and the content pages so every utility class the
 *  site actually uses survives purging. Output is built to
 *  public/css/tailwind.css (see build_css.sh), which main.html links locally —
 *  no CDN, no third-party request at page-view time. */
module.exports = {
  content: [
    "./templates/**/*.html",
    "./content/**/*.html",
    "./content/**/*.md",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
};
