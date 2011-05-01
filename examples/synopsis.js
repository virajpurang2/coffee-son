(function() {
  module.exports = {
    spans: [
      {
        text: 'A '
      }, {
        text: 'link',
        url: 'https://github.com/jsonista/coffee-literals'
      }, {
        text: ' to this repo'
      }
    ],
    mustache: "<div>\n{{ spans }}\n</div>"
  };
}).call(this);
