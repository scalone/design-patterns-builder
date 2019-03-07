
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "design/patterns/builder/version"

Gem::Specification.new do |spec|
  spec.name          = "design-patterns-builder"
  spec.version       = Design::Patterns::Builder::VERSION
  spec.authors       = ["Thiago Scalone"]
  spec.email         = ["thiago@scalone.com.br"]

  spec.summary       = %q{This library was created based on the book Design Patterns in Ruby}
  spec.description   = %q{This library was created based on the book Design Patterns in Ruby. The Builder is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
