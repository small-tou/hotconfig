configs = {}
fs = require 'fs'
HotConfig = (key)->
  if not configs[key]
    configs[key] = require HotConfig.prefix+key+".json"
  return configs[key]
setInterval ()->
  for key,config of configs
    fs.readFile HotConfig.prefix+key+".json",'utf-8',(error,content)->
      obj = JSON.parse content
      if not obj.version
        throw new Error 'must have field "version" in config file'
      if obj.version !=configs[key].version
        configs[key] = obj
      else
        obj = null
,1000

HotConfig.prefix = __dirname
module.exports = HotConfig
