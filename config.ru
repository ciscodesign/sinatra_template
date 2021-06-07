# config.ru (run with rackup)
require './app'
run MyApp

map ('/'){run ApplicationController}