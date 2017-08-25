# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-honeybadger-sourcemaps'
  spec.version       = '1.0.0'
  spec.authors       = ['Vitaly Perminov']
  spec.email         = ['perminovx@gmail.com']

  spec.summary       = %q{Capistrano task to upload source maps to Honeybadger on deploy}
  spec.description   = %q{Capistrano task that uploads source maps to Honeybadger on deploy}
  spec.homepage      = 'https://github.com/rentmania/capistrano-honeybadger-sourcemaps'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.1"
  spec.add_dependency "multipart-post", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
