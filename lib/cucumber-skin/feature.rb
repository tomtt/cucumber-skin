module CucumberSkin
  class FeatureTagSet < Array
    # I chose to inherit from an Array in stead of a Set because an array is
    # more transparant to code with (returns [] when empty for example)
    alias_method :original_append, :<<

    def initialize(feature)
      @feature = feature
    end

    def <<(elem)
      tag = Tag.instance(elem)
      tag.tag(@feature)
      unless include?(tag)
        self.original_append(tag)
      end
    end
  end

  class Feature
    attr_accessor :tags
    attr_accessor :scenarios

    def initialize
      @tags = FeatureTagSet.new(self)
      @scenarios = []
    end

  end
end
