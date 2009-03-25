# spec/cucumber-skin/cucumber-skin/feature_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin

describe Feature do
  describe 'tags' do
    it "should have an empty list of tags" do
      Feature.new.tags.should == []
    end

    it "should contain a tag added to it" do
      tag = Tag.new('some tag')
      feature = Feature.new
      feature.tags << tag
      feature.tags.should == [tag]
    end

    it "should contain all tags added to it" do
      tag1 = Tag.new('some tag')
      tag2 = Tag.new('some other tag')
      tag3 = Tag.new('last tag')
      feature = Feature.new
      feature.tags << tag1
      feature.tags << tag3
      feature.tags << tag2
      feature.tags.should include(tag1, tag2, tag3)
    end

    it "can not contain a certain tag more than once" do
      tag = Tag.new('some tag')
      feature = Feature.new
      feature.tags << tag
      feature.tags << tag
      feature.should have(1).tags
    end

    # This works out of the box, but just put this here to be sure
    it "can not contain a tag with an identical string more than once" do
      tag1 = Tag.new('some tag')
      tag2 = 'some tag'
      feature = Feature.new
      feature.tags << tag1
      feature.tags << tag2
      feature.should have(1).tags
    end

    it "should allow you to add a string to its tags and convert it to a tag" do
      feature = Feature.new
      feature.tags << 'string_tag'
      feature.tags.first.should be_instance_of(Tag)
    end
  end
end

# EOF
