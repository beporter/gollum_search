# This config file is injected into the local Docker Compose environment
# for the purposes of engaging the GollumSearch::Middleware plugin
# in front of the Gollum app.

$stderr.puts '!!! Rack config engaged !!!'

require_relative 'lib/gollum_search.rb'
use GollumSearch::Middleware

require 'gollum/app'
wiki_path = '/app/test/examples/lotr.git'
Precious::App.set(:gollum_path, wiki_path)
run Precious::App
