$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "unlock_auto_html/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "unlock_auto_html"
  s.version     = UnlockAutoHtml::VERSION
  s.authors     = ["Daniel Weinmann"]
  s.email       = ["danielweinmann@gmail.com"]
  s.homepage    = "https://github.com/danielweinmann/unlock_auto_html"
  s.summary     = "AutoHtml helper and filters for Unlock"
  s.description = "AutoHtml helper and filters for Unlock"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4", ">= 4.1.6"
  s.add_dependency "RedCloth"
  s.add_dependency "auto_html", "1.5.1"

end
