# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "versionifier/version"

Gem::Specification.new do |s|
  s.name        = "versionifier"
  s.version     = Versionifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Xavier Via"]
  s.email       = ["xavier.via.canel@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Version number update gem}
  s.description = %q{Version number update gem}

  s.rubyforge_project = "versionifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
