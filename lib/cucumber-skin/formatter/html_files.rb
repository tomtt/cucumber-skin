require 'cucumber'

module CucumberSkin
  module Formatter
    class HtmlFiles
      attr_accessor :options

      def initialize(step_mother, io, options)
        @options = options
      end

      def visit_features(features)
        puts "Visiting features"
      end
    end
  end
end
