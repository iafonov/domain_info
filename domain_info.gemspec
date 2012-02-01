# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "domain_info/version"

Gem::Specification.new do |s|
  s.name        = "domain_info"
  s.version     = DomainInfo::VERSION
  s.authors     = ["Igor Afonov"]
  s.email       = ["afonov@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Wraps access to basic domain DNS records}
  s.description = %q{Wraps access to basic domain DNS records needed to verify domain configuration}

  s.rubyforge_project = "domain_info"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
