config = require "lapis.config"

config "development", ->
  port 8081

config "production", ->
  port 80
  num_workers 4
  code_cache "on"