# Simple ops

## Generate array of all letters and digits

> [generate-array-of-all-letters-and-digits](https://stackoverflow.com/questions/4846853/generate-array-of-all-letters-and-digits)

```ruby
myarr = [*?a..?z]       #generates an array of strings for each letter a to z
myarr = [*?a..?z] + [*?0..?9] # array of strings a-z and 0-9
```
