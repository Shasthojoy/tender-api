# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tender/version'

Gem::Specification.new do |gem|
  gem.name          = "tender-api"
  gem.version       = Tender::VERSION
  gem.authors       = ["Michael Saffitz"]
  gem.email         = ["mike@apptentive.com"]
  gem.description   = %q{Ruby API wrapper for Tender - http://tenderapp.com}
  gem.summary       = %q{Ruby API wrapper for Tender - http://tenderapp.com}
  gem.homepage      = "http://github.com/apptentive/tender-api"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('faraday', '~> 0.8.8')
  gem.add_dependency('faraday_middleware', '~> 0.9.0')


  gem.add_development_dependency "rake"
end
