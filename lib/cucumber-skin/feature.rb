module CucumberSkin
  class TagSet < Array
    # I chose to inherit from an Array in stead of a Set because an array is
    # more transparant to code with (returns [] when empty for example)
    alias_method :original_append, :<<

    def <<(elem)
      tag = Tag.instance(elem)
      unless include?(tag)
        self.original_append(tag)
      end
    end
  end

  class Feature
    attr_accessor :tags
    attr_accessor :scenarios

    def initialize
      @tags = TagSet.new
      @scenarios = []
    end

  end
end
