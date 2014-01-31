require './my_middleware'

CACHE = false
use Rack::Deflater
run MyMiddleware