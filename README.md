# MyMiddleware

This is a template project mostly for internal usage. It consists of a Sinatra-server, configured to use SLIM-templates,
custom SASS and CoffeScript -resources. It also utilizes Rack-Cache and tests itself via RSpec.

The main purpose is to build some functionality on top of this working template and to inject it in a Rails-app as
Rack::Middleware.

## Installation

Add this line to your application's Gemfile:

    gem 'my_middleware'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install my_middleware

## Usage

Include in your local app's config.ru

    require 'my_middleware' (unless you use Bundler)

    ...

    map '/middleware' do
      run MyMiddleware::Server.new
    end

    ...

    run YouRailsApplication


## Contributing

1. Fork it ( http://github.com/<my-github-username>/my_middleware/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
