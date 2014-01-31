require 'sass'
require 'coffee-script'
require 'rack-cache'

module MyMiddleware

  class SassHandler < Sinatra::Base
    set :views, File.dirname(__FILE__) + '/views/assets/sass'

    get '/css/*.css' do
      cache_control :public, :max_age => 36000 if MyMiddleware::CACHE
      filename = params[:splat].first
      sass filename.to_sym
    end
  end

  class CoffeeHandler < Sinatra::Base
    set :views, File.dirname(__FILE__) + '/views/assets/coffee'

    get '/js/*.js' do
      cache_control :public, :max_age => 36000 if MyMiddleware::CACHE
      filename = params[:splat].first
      coffee filename.to_sym
    end
  end

end