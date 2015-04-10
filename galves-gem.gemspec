# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'galves/version'

Gem::Specification.new do |spec|
  spec.name          = "galves-gem"
  spec.version       = Galves::Gem::VERSION
  spec.authors       = ["Mike Bieliaiev"]
  spec.email         = ["drkmen@rambler.ru"]
  spec.summary       = "A client for Galves.com API"
  spec.description   = "A client for Galves.com API"
  spec.homepage      = "https://github.com/drkmen/galves-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "excon", '~> 0.44.4'
  spec.add_development_dependency "bundler", '~> 1.7'
  spec.add_development_dependency "rake", '~> 10.0'
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "minitest", '~> 5.5'
  spec.add_development_dependency "minitest-rg", '~> 5.1.0'
  spec.add_development_dependency "vcr", '~> 2.9.3'
  spec.add_development_dependency "webmock", '~> 1.20.4'
end
