lapis = require "lapis"
console = require "lapis.console"

class extends lapis.Application
  "/lapis": =>
    "Welcome to Lapis #{require "lapis.version"}!"
  "/lapis/console": console.make!    
