require 'cucumber'

module CucumberSkin
  module Gatherer
    class ResultsGatherer < Cucumber::Ast::Visitor
      def initialize(step_mother, options)
        @options = options
        @step_mother = step_mother
      end

      def visit_features(features)
        puts "Done visiting features from results gatherer"
      end
    end
  end
end
