require 'resque'

module MyMiddleware
  class Redis
    #Resque.redis = Redis::Namespace.new('gvoe_auth', redis: Redis.new)


  end
end