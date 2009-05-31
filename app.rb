dir = File.dirname(__FILE__)
$:.unshift "#{dir}/lib"

require "free_farmer"
Sinatra::Application.run!
