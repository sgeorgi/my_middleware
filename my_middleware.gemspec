# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_middleware/version'

Gem::Specification.new do |spec|
  spec.name          = "my_middleware"
  spec.version       = MyMiddleware::VERSION
  spec.authors       = ["Sebastian Georgi"]
  spec.email         = ["sgeorgi@capita.de"]
  spec.summary       = %q{ Simple Sinatra-project to use as fully-fledged Rake::Middleware }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "rack-cache"
  spec.add_dependency "sass"
  spec.add_dependency "slim"
  spec.add_dependency "coffee-script"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "simplecov"
end