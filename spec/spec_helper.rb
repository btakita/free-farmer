require "rubygems"
require "spec"
require "spec/autorun"
require 'rack/test'
require "rr"

dir = File.dirname(__FILE__)
$:.unshift File.expand_path("#{dir}/../lib")
require "free_farmer"

set :environment, :test

Spec::Runner.configure do |config|
  config.mock_with :rr
end

class Spec::ExampleGroup
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

describe "GET /" do
  it "says hello world" do
    get '/'
    last_response.should be_ok
    last_response.body.should == "Hello World"
  end

  it "says hello to a person" do
    get '/', :name => 'Simon'
    last_response.body.should include('Simon')
  end
end
