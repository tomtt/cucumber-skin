module CucumberSkin
  class Scenario
    attr_accessor :tags
    attr_accessor :steps

    def initialize
      @tags = TagSet.new(self)
      @steps = []
    end
  end
end
