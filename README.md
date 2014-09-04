### maxconf.rb

A sub-stack lib for loading [MaxCDN](http://www.maxcdn.com/) configuration files using the standard set forth by [MaxCLI](https://github.com/MaxCDN/maxcli).

#### Install

```
gem install maxconf
```

#### Use

```ruby
###
# option:  default   :: description
# ------------------------------------
# "file":  undefined :: config file to be used, default is
#                      '$HOME/.maxcdn.yml'
# "[opt]": n/a       :: set or overide [opt]
###

require 'maxconf'

# default
###
conf = MaxConf.load()
puts conf["alias"]
# => YOUR_ALIAS

# custom file path
###
conf = MaxConf.load("/path/to/maxcdn.yml")
puts conf["alias"]
# => YOUR_ALIAS

# option overides
###
opts = {
  "file" => "/path/to/maxcdn.yml",
  "alias" => "ALIAS_OVERIDE"
}

conf = MaxConf.load(opts)
puts conf["alias"]
# => ALIAS_OVERIDE
```

### Tests

```
$ ruby ./test/maxconf_test.rb
```
