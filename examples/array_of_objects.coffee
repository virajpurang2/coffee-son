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

# TODO print in a JSON file
console.log JSON.stringify(para, null, 2)

para = [
    text: 'A '
  ,
    text: 'link'
    url: 'https://github.com/jsonista/coffee-literals'
  ,
    text: ' to this repo'
]

# TODO print in a JSON file
console.log JSON.stringify(para, null, 2)
