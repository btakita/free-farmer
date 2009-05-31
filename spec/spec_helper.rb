require 'rubygems'
require 'ramaze'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'rr'

Spec::Runner.configure do |config|
  config.mock_with :rr
end

module Innate
  # minimal middleware, no exception handling
  middleware(:spec){|m| m.innate }

  # skip starting adapter
  options.started = true
  options.mode = :spec
end

module Ramaze
  Mock::OPTIONS[:app] = Ramaze

  middleware!(:spec){|m| m.run(AppMap) }
end

class Spec::ExampleGroup
  include Rack::Test::Methods

  before do
    Ramaze.setup_dependencies
  end

  def app; Ramaze.middleware; end
end

require __DIR__('../start')
Ramaze.options.roots = __DIR__('../')
