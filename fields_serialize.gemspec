# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fields_serialize/version'

Gem::Specification.new do |spec|
  spec.name          = "fields_serialize"
  spec.version       = FieldsSerialize::VERSION
  spec.authors       = ["Fernando Pereira", "Brunno Gomes"]
  spec.email         = ["fernandopereirala@gmail.com", "brunnolgp@gmail.com"]
  spec.description   = "An alternative to Jquery $.serialize() when you are not using a form."
  spec.summary       = "An alternative to Jquery $.serialize() when you are not using a form."
  spec.homepage      = "https://github.com/fernandopereira/fields_serialize"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
