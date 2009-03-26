# spec/cucumber-skin/cucumber-skin/gatherer/tag_set_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin::Gatherer

describe TagSet do
  it "should initially be empty" do
    TagSet.new(:some_owner).should == []
  end

  it "should contain tags created from the elements added to it" do
    tag_set = TagSet.new(:some_owner)
    tag_set << :one_thing
    tag_set << :another_thing
    tag_set.should include(Tag.instance(:one_thing), Tag.instance(:another_thing))
  end

  it "should tag its owner with the element added to it" do
    tag = Tag.instance(:aardvark)
    tag_set = TagSet.new(:some_owner)
    tag.should_receive(:tag).with(:some_owner)
    tag_set << :aardvark
  end
end

# EOF
