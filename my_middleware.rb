require 'sinatra/base'
require 'rack/cache'
require 'slim'
require 'sass'
require 'coffee-script'

class SassHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/views/assets/sass'

  get '/css/*.css' do
    cache_control :public, :max_age => 36000 if CACHE
    filename = params[:splat].first
    sass filename.to_sym
  end
end

class CoffeeHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/views/assets/coffee'

  get '/js/*.js' do
    cache_control :public, :max_age => 36000 if CACHE
    filename = params[:splat].first
    coffee filename.to_sym
  end
end

class MyMiddleware < Sinatra::Base
  use Rack::Cache

  set :javascripts, %w(bootstrap.min.js my_middleware.js)

  use SassHandler
  use CoffeeHandler

  get '/' do
    cache_control :public, :max_age => 36000 if CACHE
    slim :index
  end
end