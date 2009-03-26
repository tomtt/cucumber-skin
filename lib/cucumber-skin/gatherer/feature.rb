module CucumberSkin
  module Gatherer
    class Feature
      attr_accessor :tags
      attr_accessor :scenarios

      def initialize
        @tags = TagSet.new(self)
        @scenarios = []
      end
    end
  end
end
