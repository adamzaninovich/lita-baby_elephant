Gem::Specification.new do |spec|
  spec.name          = "lita-baby_elephant"
  spec.version       = "0.0.5"
  spec.authors       = ["Adam Zaninovich"]
  spec.email         = ["adam.zaninovich@activenetwork.com"]
  spec.description   = %q{Get a baby elephant gif from /r/babyelephants'}
  spec.summary       = %q{Get a baby elephant gif from /r/babyelephants'}
  spec.homepage      = "https://github.com/adamzaninovich/lita-baby_elephant"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.3"
  spec.add_runtime_dependency "read_it", "0.0.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
