# CSON Plugin for DocPad
Adds support for CSON to JSON compilation to DocPad

Convention: `.json.cson`

## Install

```
npm install --save docpad-plugin-cson
```

## Example

save this at `src/documents/example.json.cson`:

```
---
title: 'test cson2json'
tags: cson, json, dev, example
---
{
  foo:
    bar: 'baz'
  arr: [
    1
    2
    3
  ]
}
```

## Dependencies

- [CSON](https://github.com/bevry/cson) 

## Author
- [github.com/defel](https://github.com/defel/)