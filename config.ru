$LOAD_PATH.unshift 'lib'
require 'my_middleware'

use Rack::Deflater
run MyMiddleware::Server.new