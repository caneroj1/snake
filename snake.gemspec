$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "snake/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "snake"
  s.version     = Snake::VERSION
  s.authors     = ["caneroj1"]
  s.email       = ["caneroj1@tcnj.edu"]
  s.homepage    = "https://github.com/caneroj1/snake"
  s.summary     = "Parse config.json included with custom downloads of Twitter Bootstrap."
  s.description = "Parse config.json included with custom downloads of Twitter Bootstrap and use it with your Rails app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0"
end
