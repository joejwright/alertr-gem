# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alertr/version'

Gem::Specification.new do |spec|
  spec.name          = "alertr"
  spec.version       = Alertr::VERSION
  spec.authors       = ["Joe Wright"]
  spec.email         = ["joe.wright@noventech.com"]
  spec.description   = %q{A client library for the alertr.co push notification service.}
  spec.summary   = %q{A client library for the alertr.co push notification service.}
  spec.homepage      = "http://alertr.co"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "httparty"
end
