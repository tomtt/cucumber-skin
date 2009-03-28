require 'cucumber'
require 'cucumber-skin/gatherer/results_gatherer'

module CucumberSkin
  module Formatter
    class HtmlFiles
      attr_accessor :options

      def initialize(step_mother, io, options)
        @gatherer = CucumberSkin::Gatherer::ResultsGatherer.new(step_mother, options)
        @options = options
      end

      def visit_features(features)
        @gatherer.visit_features(features)

        puts "Done visiting features from HtmlFiles formatter"
      end
    end
  end
end
