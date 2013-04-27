# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caveat/version'

Gem::Specification.new do |spec|
  spec.name          = 'caveat'
  spec.version       = CAVEAT::VERSION
  spec.authors       = ['Lennart Fridén']
  spec.email         = ['lennart@devl.se']
  spec.description   = %q{CAVEAT}
  spec.summary       = %q{Completely Asinine Virtual Executing Assembly Thingy}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'debugger'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rb-fsevent'
  spec.add_development_dependency 'rspec'
end
