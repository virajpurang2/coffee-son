# coffee-literals

Goals:

* A description of how to format JSON data as literals in CoffeeScript.
* A tool for rendering JSON data as CoffeeScript for inclusion in
  CoffeeScript files.

## Examples

### an array of objects

CoffeeScript literal:

    para = [
      {
        text: 'A '
      },
      {
        text: 'link'
        url: 'https://github.com/jsonista/coffee-literals'
      },
      {
        text: ' to this repo'
      }
    ]

A terser CoffeeScript literal:

    para = [
        text: 'A '
      ,
        text: 'link'
        url: 'https://github.com/jsonista/coffee-literals'
      ,
        text: ' to this repo'
    ]

JSON:

    [
      {
        "text": "A "
      },
      {
        "text": "link",
        "url": "https://github.com/jsonista/coffee-literals"
      },
      {
        "text": " to this repo"
      }
    ]

