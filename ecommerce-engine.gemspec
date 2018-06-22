$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecommerce/engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecommerce-engine"
  s.version     = Ecommerce::Engine::VERSION
  s.authors     = ["Alexandr Urechin"]
  s.email       = ["sannyok@gmail.com"]
  s.homepage    = "http://ecommerce.com/home"
  s.summary     = "Summary of Ecommerce::Engine."
  s.description = "Description of Ecommerce::Engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
