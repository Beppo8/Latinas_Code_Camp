module.exports = {
  theme: {
    fontFamily: {
      'IBM': ['IBM Plex Sans Condensed', 'sans'],
      'mono': ['IBM Plex Mono', 'mono']
    },
    extend: {
      colors: {
        'la-green': '#08f09e',
      },
    }
  },
  purge: {
    enabled: process.env.MIX_ENV === "prod",
    content: [
      "../lib/**/*.eex",
      "../lib/**/*.leex"
    ],
    options: {
      whitelist: []
    }
  },
  plugins: [require("kutty")]
}
