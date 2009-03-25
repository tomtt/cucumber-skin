# spec/cucumber-skin/cucumber-skin/tag_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin

describe Tag do
  it "should have the string it was initialized with as its label" do
    Tag.new('some_tag').label.should == 'some_tag'
  end

  # This works out of the box, but just put this here to be sure
  it "should be identical if its label is identical" do
    tag1 = Tag.new('some tag')
    tag2 = Tag.new('some tag')
    tag1.should == tag2
  end
end

# EOF
