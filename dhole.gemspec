# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dhole/version'

Gem::Specification.new do |spec|
  spec.name          = "dhole"
  spec.version       = Dhole::VERSION
  spec.authors       = ["Asaf Bartov"]
  spec.email         = ["asaf.bartov@gmail.com"]
  spec.summary       = %q{Mediawiki Object-Relational Mapping}
  spec.description   = %q{ActiveRecord mapping of main Mediawiki entities and relationships}
  spec.homepage      = "https://github.com/abartov/dhole"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "composite_primary_keys"
end
