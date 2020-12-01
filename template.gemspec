# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'template/version'
require 'template/post_message'

Gem::Specification.new do |spec|
  spec.name          = "template"
  spec.version       = Template::VERSION
  spec.authors       = ["Bryan Lim"]
  spec.email         = ["ytbryan@hey.com"]
  spec.summary       = %q{template}
  spec.description   = %q{template}
  spec.homepage      = "https://github.com/ytbryan/template"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.post_install_message = Template::MESSAGE
  spec.required_ruby_version = ">= 2.0.0"
  spec.add_development_dependency "rspec", "~> 3.9.0"
end
