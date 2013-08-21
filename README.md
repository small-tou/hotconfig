hotconfig
=========

hot config for nodejs

usage
=======

`npm install hotconfig`

then 
```
HotConfig = require 'hotconfig'

HotConfig("configname");
```
then you can get a hot config


when you want to change config. you don't need reboot process.

just use HotConfig to load the config ,then when you change the config,change the version in config.the change will be effect in one second。

limit
=======

* config must be a .json file
* must have 'version' field in config file,else will throw Error directly
* set HotConfig.prefix before you use ,default set is __dirname