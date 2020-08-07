require "pry"
require "colorize"
require "uri"
require "net/http"
require "json"


require_relative "../lib/models/People.rb"
require_relative "../lib/models/Planet.rb"
require_relative "../lib/models/Vehicle.rb"
require_relative "../lib/models/Starship.rb"

require_relative "../lib/services/APIService.rb"
require_relative "../lib/services/CLI.rb"