# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ans-gem-builder/version"

Gem::Specification.new do |s|
  s.name        = "ans-gem-builder"
  s.version     = Ans::Gem::Builder::VERSION
  s.authors     = ["sakai shunsuke"]
  s.email       = ["sakai@ans-web.co.jp"]
  s.homepage    = "https://github.com/answer/ans-gem-builder"
  s.summary     = %q{gem を作るユーティリティー}
  s.description = %q{gem 関連の rake タスクを提供する}

  s.rubyforge_project = "ans-gem-builder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "rake"
end
