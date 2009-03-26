# spec/cucumber-skin/cucumber-skin/formatter/html_files_spec.rb
# $Id$

# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

# No need to type CucumberSkin::Formatter before each call
include CucumberSkin::Formatter

describe HtmlFiles do
  it "should implement visit_features" do
    HtmlFiles.new(:step_mother, :io, {}).should respond_to(:visit_features)
  end
end

# EOF
