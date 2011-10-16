# vi: set fileencoding=utf-8

require "ans-gem-builder"

module Ans::Gem::Builder
  class << self
    include Rake::DSL if defined?(Rake::DSL)

    def install_tasks
      namespace :gem do
        builders.each{|builder| builder.install_tasks}
      end
    end

    private

    def builders
      [
        Bundler,
      ]
    end

  end
end

Ans::Gem::Builder.install_tasks
