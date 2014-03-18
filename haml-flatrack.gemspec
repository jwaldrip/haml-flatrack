# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haml/flatrack/version'

Gem::Specification.new do |spec|
  spec.name          = "haml-flatrack"
  spec.version       = Haml::Flatrack::VERSION
  spec.authors       = ["Jason Waldrip"]
  spec.email         = ["jason@waldrip.net"]
  spec.summary       = "Haml for flatrack"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'haml'

  # Dev Dependencies
  spec.add_development_dependency 'flatrack', '~> 1.2'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'guard', '~> 2.5'
  spec.add_development_dependency 'guard-rspec', '~> 4.2'
  spec.add_development_dependency 'guard-bundler', '~> 2.0'
  spec.add_development_dependency 'pry', '~> 0.9'
  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_development_dependency 'simplecov', '~> 0.8'
  spec.add_development_dependency 'rubocop', '~> 0.18.1'
  spec.add_development_dependency 'inch', '~> 0.3.2'
  spec.add_development_dependency 'rake', ['> 0.8.7', '< 10.2']
end
