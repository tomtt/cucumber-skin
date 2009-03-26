# spec/cucumber-skin/cucumber-skin/gatherer/results_gatherer_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

# No need to type CucumberSkin:: before each call
include CucumberSkin

describe ResultsGatherer do
  it "should inherit from the cucumber ast visitor" do
    ResultsGatherer.new(:step_mother).should be_a(Cucumber::Ast::Visitor)
  end
end

# EOF
