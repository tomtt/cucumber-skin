# spec/cucumber-skin/cucumber-skin/tag_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin

describe Tag do
  it "should not have a public initialize method" do
    lambda { Tag.new('whatever') }.should raise_error(NoMethodError)
  end

  it "should return a tag instance from a string" do
    Tag.instance('some_tag1').should be_instance_of(Tag)
  end

  it "should return a tag instance from a string which converts to that string" do
    Tag.instance('some_tag2').to_s.should === 'some_tag2'
  end

  it "should return identical tags for equal strings" do
    Tag.instance('some_tag3').should be_equal(Tag.instance('some_tag3'))
  end

  it "should return identical tags when created from a tag or a string" do
    tag = Tag.instance('some_tag4')
    Tag.instance(tag).should be_equal(tag)
  end

  describe "things tagged" do
    it "initially has nothing in the list of things it tagged" do
      @tag = Tag.instance('some_tag10')
      @tag.things_tagged.should be_empty
    end

    it "adds something that it tags to the list of things it tagged" do
      @tag = Tag.instance('some_tag11')
      @tag.tag(:thing)
      @tag.things_tagged.should include(:thing)
    end

    it "has only one instance of a thing it tagged multiple times in the list of things it tagged" do
      @tag = Tag.instance('some_tag12')
      @tag.tag(:thing)
      @tag.tag(:thing)
      @tag.things_tagged.should have(1).item
    end
  end
end

# EOF
