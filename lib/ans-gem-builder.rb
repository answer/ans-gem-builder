require "ans-gem-builder/version"

module Ans
  module Gem
    module Builder
      autoload :Config,  "ans-gem-builder/config"
      autoload :Bundler, "ans-gem-builder/bundler"
    end
  end
end
