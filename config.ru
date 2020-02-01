# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'launchy'

run Rails.application

Launchy.open("http://localhost:3000")