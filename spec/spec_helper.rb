require 'simplecov'
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', 'lib', 'my_middleware.rb')

require 'sinatra'
require 'rack/test'
require 'rspec'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

module SinatraSpecHelpers
  def app
    MyMiddleware::Server.new
  end
end

RSpec.configure do |config|
  config.include SinatraSpecHelpers
  config.include Rack::Test::Methods
end