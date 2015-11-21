# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chronic_duration/version'

Gem::Specification.new do |gem|

  gem.name          = "chronic_duration"
  gem.version       = ChronicDuration::VERSION
  gem.authors       = ["hpoydar","gizmore"]
  gem.email         = ["henry@poydar.com","gizmore@wechall.net"]
  gem.description   = %q{A simple Ruby natural language parser for elapsed time. (For example, 4 hours and 30 minutes, 6 minutes 4 seconds, 3 days, etc.) Returns all results in seconds. Will return an integer unless you get tricky and need a float. (4 minutes and 13.47 seconds, for example.) The reverse can also be performed via the output method.}
  gem.summary       = %q{A simple Ruby natural language parser for elapsed time with slight i18n patches}
  gem.homepage      = "https://github.com/gizmore/chronic_duration"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "i18n", "~> 0.7.0"
  gem.add_runtime_dependency "numerizer", "~> 0.2.0"

  gem.add_development_dependency "rake", "~> 10.4.2"
  gem.add_development_dependency "rspec", "~> 3.4.0"

end
