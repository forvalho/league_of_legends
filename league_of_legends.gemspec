# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'league_of_legends/version'

Gem::Specification.new do |spec|
  spec.name          = "league_of_legends"
  spec.version       = LeagueOfLegends::VERSION
  spec.authors       = ["Francisco Orvalho"]
  spec.email         = ["francisco.orvalho@gmail.com"]
  spec.summary       = %q{Implementation of the LoL API}
  spec.description   = %q{This gem implements the League Of Legends API (currently in open beta). It will continue to be updated as the API evolves.
    Please see the README at https://github.com/forvalho/league_of_legends/blob/master/README.md

This product is not endorsed, certified or otherwise approved in any way by Riot Games, Inc. or any of its affiliates.}
  spec.homepage      = "http://github.com/forvalho/league_of_legends"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "vcr", "~> 2.8"
  spec.add_development_dependency "webmock", ">= 1.8.0", "< 1.16"
end
