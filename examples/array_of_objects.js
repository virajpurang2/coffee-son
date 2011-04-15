(function() {
  var para;
  para = [
    {
      text: 'A '
    }, {
      text: 'link',
      url: 'https://github.com/jsonista/coffee-literals'
    }, {
      text: ' to this repo'
    }
  ];
  console.log(JSON.stringify(para, null, 2));
  para = [
    {
      text: 'A '
    }, {
      text: 'link',
      url: 'https://github.com/jsonista/coffee-literals'
    }, {
      text: ' to this repo'
    }
  ];
  console.log(JSON.stringify(para, null, 2));
}).call(this);
