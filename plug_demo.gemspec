$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "plug_demo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "plug_demo"
  s.version     = PlugDemo::VERSION
  s.authors     = ["balambf"]
  s.email       = ["balaji.d@madebyfire.com"]
  s.homepage    = "http://github.com"
  s.summary     = "testing plug option in rails 5"
  s.description = "testing theplugin"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.1"

  s.add_development_dependency "sqlite3"
end
