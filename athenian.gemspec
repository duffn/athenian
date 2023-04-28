$:.push File.expand_path('../lib', __FILE__)
require 'athenian/version'

Gem::Specification.new do |s|
  s.name        = 'athenian'
  s.version     = Athenian::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['duffn']
  s.email       = ['3457341+duffn@users.noreply.github.com']
  s.homepage    = 'https://github.com/duffn/athenian'
  s.summary     = 'A library for working with the Athenian API.'
  s.description = 'Learn about engineering metrics and improve your software delivery performance with the Athenian API.'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.7'

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'rubocop', '~> 0.66.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.require_paths = ['lib']
end
