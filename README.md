# CoffeeSON

Goals:

*   A description of how to format JSON data as literals in CoffeeScript.
    (started)
*   A tool for rendering JSON data as CoffeeScript for inclusion in
    CoffeeScript files. (just started)

*Note*: This is not intended as a replacement for JSON, but a tool for using it
with CoffeeScript. It's not a serialization format, it's an editing 
format. Note the inclusion of module.exports (a replacement format would
include a parser).

## Example

CoffeeScript module with a literal:

``` coffeescript
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
    '''
    <div>
    {{ spans }}
    </div>
    '''
```

JSON:

``` js
{
  "spans":
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
  ],
  "mustache": "<div>\n{{ spans }}\n</div>"
}
```
