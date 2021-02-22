# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tectonics/version'

Gem::Specification.new do |gem|
  gem.name          = "tectonics"
  gem.version       = Tectonics::VERSION
  gem.summary       = 'asdfasdfasdfasdfasdf'
  gem.description   = 'asdfasdfdsaasdfdfdsfa asdfasd fdsss s '
  gem.license       = "MIT"
  gem.authors       = ["Miker Irick"]
  gem.email         = "miker@sandstormit.com"
  gem.homepage      = "https://rubygems.org/gems/tectonics"

  gem.files         = `git ls-files`.split($/)

  `git submodule --quiet foreach --recursive pwd`.split($/).each do |submodule|
    submodule.sub!("#{Dir.pwd}/",'')

    Dir.chdir(submodule) do
      `git ls-files`.split($/).map do |subpath|
        gem.files << File.join(submodule,subpath)
      end
    end
  end
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'chunky_png'
  gem.add_development_dependency 'minitest', '~> 5.0'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rdoc', '~> 4.0'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
