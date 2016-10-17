lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "es6/rails/version"

Gem::Specification.new do |s|
  s.name        = 'es6-rails'
  s.version     = Es6::Rails::VERSION
  s.summary     = "ES6 adapter for Rails"
  s.description = "Enables use of ES6 in assets, views and inline."
  s.files       = Dir['lib/**/*'].keep_if{|file| File.file?(file)} + %w(LICENSE.txt README.md)
  s.homepage    = "https://github.com/es6-rails/es6-rails"
  s.license     = 'MIT'
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'rails',                 '>= 4.0', '< 5.0.0.1'
  s.add_dependency 'babel-transpiler',      '~> 0.7', '>= 0.7.0'
  s.add_dependency 'sprockets',             '~> 3.0', '>= 3.0.0'
  s.add_dependency 'sprockets-es6',         '~> 0.8', '>= 0.8.1'

  s.authors     = ["Cristian Dugacicu"]
  s.email       = 'razorcd@yahoo.com'
end

