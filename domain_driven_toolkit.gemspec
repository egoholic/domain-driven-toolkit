# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'domain_driven_toolkit/version'

Gem::Specification.new do |spec|
  spec.name          = "domain_driven_toolkit"
  spec.version       = DomainDrivenToolkit::VERSION
  spec.authors       = ["Vladimir Melnick"]
  spec.email         = ["egotraumatic@gmail.com"]

  spec.summary       = %q{Toolkit for Domain-Driven Development.}
  spec.description   = %q{Toolkit for Domain-Driven Development.}
  spec.homepage      = "http://github.com/egoholic/domain_driven_toolkit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "mutant-rspec"
  spec.add_development_dependency "codeclimate-test-reporter"
end

