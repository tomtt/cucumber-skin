module CucumberSkin
  class TagSet < Array
    # I chose to inherit from an Array in stead of a Set because an array is
    # more transparant to code with (returns [] when empty for example)
    alias_method :original_append, :<<

    def initialize(owner)
      @owner = owner
    end

    def <<(elem)
      tag = Tag.instance(elem)
      unless include?(tag)
        tag.tag(@owner)
        self.original_append(tag)
      end
    end
  end
end
