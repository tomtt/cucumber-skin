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
    Tag.instance('some_tag').should be_instance_of(Tag)
  end

  it "should return a tag instance from a string which converts to that string" do
    Tag.instance('some_tag').to_s.should === 'some_tag'
  end

  it "should return identical tags for equal strings" do
    Tag.instance('some_tag').should be_equal(Tag.instance('some_tag'))
  end

  it "should return identical tags when created from a tag or a string" do
    tag = Tag.instance('some_tag')
    Tag.instance(tag).should be_equal(tag)
  end
end

# EOF
