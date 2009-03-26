module CucumberSkin
  class Scenario
    attr_accessor :tags

    def initialize
      @tags = TagSet.new(self)
      @scenarios = []
    end
  end
end
