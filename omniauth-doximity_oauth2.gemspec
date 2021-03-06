# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/doximity_oauth2/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-doximity_oauth2"
  spec.version       = Omniauth::DoximityOauth2::VERSION
  spec.authors       = ["Aaron Kuehler"]
  spec.email         = ["aaron.kuehler@gmail.com"]
  spec.summary       = %q{A Doximity OAuth2 Strategy for OmniAuth}
  spec.description   = %q{An OmniAuth strategy implementation for obtaining access to the Doximity API; API documentation at: http://developer.doximity.com/}
  spec.homepage      = "https://github.com/indiebrain/omniauth-doximity_oauth2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency 'rake', '~> 10.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.8'

  spec.add_runtime_dependency 'omniauth', '~> 1.0'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
end
