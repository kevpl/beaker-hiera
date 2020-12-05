$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'beaker-hiera/version'

Gem::Specification.new do |s|
  s.name        = 'beaker-hiera'
  s.version     = Beaker::DSL::Helpers::Hiera::Version::STRING
  s.authors     = ['Puppetlabs']
  s.email       = ['qe-team@puppetlabs.com']
  s.homepage    = 'https://github.com/puppetlabs/beaker-hiera'
  s.summary     = 'Hiera DSL Helpers!'
  s.description = 'For use for the Beaker acceptance testing tool'
  s.license     = 'Apache2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  # Testing dependencies
  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'simplecov'

  # Documentation dependencies
  s.add_development_dependency 'markdown'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'yard'

  # Run time dependencies
  s.add_runtime_dependency 'beaker', '~> 4.0'
end
