module CucumberSkin
  class TagSet < Array
    # I chose to inherit from an Array in stead of a Set because an array is
    # more transparant to code with (returns [] when empty for example)
    alias_method :original_append, :<<

    def <<(elem)
      unless(Tag === elem)
        elem = Tag.new(elem)
      end
      unless include?(elem)
        self.original_append(elem)
      end
    end
  end

  class Feature
    attr_accessor :tags

    def initialize
      @tags = TagSet.new
    end

  end
end
