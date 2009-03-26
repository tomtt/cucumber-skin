# spec/cucumber-skin/cucumber-skin/scenario_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin

describe Scenario do
  describe 'tags' do
    it "should have an empty list of tags" do
      Scenario.new.tags.should == []
    end

    it "should contain a tag added to it" do
      tag = Tag.instance('some tag')
      scenario = Scenario.new
      scenario.tags << tag
      scenario.tags.should == [tag]
    end

    it "should contain all tags added to it" do
      tag1 = Tag.instance('some tag')
      tag2 = Tag.instance('some other tag')
      tag3 = Tag.instance('last tag')
      scenario = Scenario.new
      scenario.tags << tag1
      scenario.tags << tag3
      scenario.tags << tag2
      scenario.tags.should include(tag1, tag2, tag3)
    end

    it "can not contain a certain tag more than once" do
      tag = Tag.instance('some tag')
      scenario = Scenario.new
      scenario.tags << tag
      scenario.tags << tag
      scenario.should have(1).tags
    end

    # This works out of the box, but just put this here to be sure
    it "can not contain a tag with an identical string more than once" do
      tag1 = Tag.instance('some tag')
      tag2 = 'some tag'
      scenario = Scenario.new
      scenario.tags << tag1
      scenario.tags << tag2
      scenario.should have(1).tags
    end

    it "should allow you to add a string to its tags and convert it to a tag" do
      scenario = Scenario.new
      scenario.tags << 'string_tag'
      scenario.tags.first.should be_instance_of(Tag)
    end

    it "should tag itself with the tag if a tag is added to it" do
      scenario = Scenario.new
      scenario.tags << 'string_tag'
      Tag.instance('string_tag').things_tagged.should include(scenario)
    end
  end
end

# EOF
