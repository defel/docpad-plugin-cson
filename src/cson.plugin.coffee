module.exports = (BasePlugin) ->
  
  class CsonPlugin extends BasePlugin
    name: 'cson'

    renderCsonToJson: (opts,next) ->
      {content} = opts

      cson = require('cson')
      cson.parse content, (err, obj) ->
        opts.content = JSON.stringify obj
        next()

    render: (opts, next) ->
      {inExtension,outExtension} = opts
      
      if inExtension is 'cson' and outExtension in ['json',null]
        @renderCsonToJson opts, next
      else
        next()