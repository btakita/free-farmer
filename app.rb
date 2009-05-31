dir = File.dirname(__FILE__)
$:.unshift "#{dir}/lib"

require "free_farmer"
set :public, "#{dir}/public"
Sinatra::Application.run!
