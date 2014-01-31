require 'sinatra/base'
require 'rack/cache'
require 'slim'

require 'my_middleware/handler'

module MyMiddleware

  class Server < Sinatra::Base
    use Rack::Cache

    set :javascripts, %w(jquery.js bootstrap.min.js my_middleware.js)

    use MyMiddleware::SassHandler
    use MyMiddleware::CoffeeHandler

    get '/' do
      redirect to('/index')
    end

    get '/index' do
      cache_control :public, :max_age => 36000 if MyMiddleware::CACHE
      slim :index
    end
  end

end