require 'singleton'

module CucumberSkin
  module Gatherer
    class Tag
      @@tags = {}

      def self.instance(tag)
        string = tag.to_s
        @@tags[string] ||= Tag.send(:new, string)
      end

      def to_s
        @string
      end

      def things_tagged
        @things_tagged.uniq
      end

      def tag(thing)
        @things_tagged << thing
      end

      private_class_method :new

      private

      def initialize(string)
        @string = string
        @things_tagged = []
      end
    end
  end
end
