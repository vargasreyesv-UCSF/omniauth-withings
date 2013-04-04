# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-withings/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Victor Vargas"]
  gem.email         = ["v.vargas2009@gmail.com.com"]
  gem.description   = %q{OmniAuth strategy for Withings.com.}
  gem.summary       = %q{OmniAuth strategy for Withings.com.}
  gem.homepage      = "https://github.com/vargasreyesv-UCSF/omniauth-withings"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-withings"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Withings::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_runtime_dependency 'multi_xml'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end