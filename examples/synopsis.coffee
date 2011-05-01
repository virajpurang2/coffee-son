module.exports =
  spans:
    [
      text: 'A '
    ,
      text: 'link'
      url: 'https://github.com/jsonista/coffee-literals'
    ,
      text: ' to this repo'
    ]
  mustache:
    """
    <div>
    {{ spans }}
    </div>
    """
