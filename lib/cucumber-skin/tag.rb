require 'singleton'

module CucumberSkin
  class Tag
    @@tags = {}

    def self.instance(tag)
      string = tag.to_s
      @@tags[string] ||= Tag.send(:new, string)
    end

    def to_s
      @string
    end

    private_class_method :new

    private

    def initialize(string)
      @string = string
    end
  end
end
