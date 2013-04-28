# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gramp/version"

Gem::Specification.new do |s|
  s.name              = 'gramp'
  s.version           = Gramp::VERSION
  s.platform          = Gem::Platform::RUBY
  s.summary           = "Google Analytics Measurement Protocol for Ruby"
  s.description       = "A Ruby wrapper for the Google Analytics Measurement Protocol"
  s.authors           = ["Martin Cortez"]
  s.email             = 'martco@gmail.com'
  s.homepage          = 'http://rubygems.org/gems/gramp'
  s.rubyforge_project = "gramp"

  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
