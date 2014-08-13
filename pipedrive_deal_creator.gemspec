# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipedrive_deal_creator/version'

Gem::Specification.new do |spec|
  spec.name          = "pipedrive_deal_creator"
  spec.version       = PipedriveDealCreator::VERSION
  spec.authors       = ["Ben Lee"]
  spec.email         = ["ben@neonroots.com"]
  spec.summary       = %q{Easy integratable gem for Pipedrive deal creation}
  spec.description   = %q{This is a Ruby gem that allows you to create a deal in Pipedrive and easily integrate it wherever you'd like. For example, contact forms on your website. }
  spec.homepage      = "https://github.com/itsbenlee/pipedrive_deal_creator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'pipedrive-ruby', '~> 0.3'
end
