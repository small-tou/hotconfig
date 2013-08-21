var HotConfig = require("./../main.js")
HotConfig.prefix = require ("path").join(__dirname,"/")
var config1 = HotConfig("config1")
setInterval(function(){
  console.log (config1)
},1000)