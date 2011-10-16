# vi: set fileencoding=utf-8

require 'bundler'

module Ans::Gem::Builder
  class Bundler < ::Bundler::GemHelper
    include Config

    def install
      desc "Create tag #{version_tag} and push"
      task 'release' do
        release_gem_without_rubygem
      end
    end

    def release_gem_without_rubygem
      guard_clean
      guard_already_tagged
      gem_path = build_gem
      tag_version {
        git_push
        gem_push gem_path
      }
    end

    private

    def gem_push(path)
      sh "scp #{path} #{gem_host}:#{gem_root}/gems"
      sh %Q{ssh #{gem_host} "rvm_path=#{remote_rvm_path} #{remote_rvm_path}/bin/rvm-shell '#{remote_ruby_version}' -c 'cd #{gem_root} && gem generate_index'"}
      ::Bundler.ui.confirm "Pushed #{name} #{version} to #{gem_host}"
    end
  end
end
