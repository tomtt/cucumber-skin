# Require the spec helper relative to this file
require File.join(File.dirname(__FILE__), %w[ .. .. spec_helper])

require 'yaml'

module CucumberSkin
  module Cli
    describe Configuration do
      # 
      # def given_cucumber_yml_defined_as(hash_or_string)
      #   File.stub!(:exist?).and_return(true)
      #   cucumber_yml = hash_or_string.is_a?(Hash) ? hash_or_string.to_yaml : hash_or_string
      #   IO.stub!(:read).with('cucumber.yml').and_return(cucumber_yml)
      # end
      # 
      # before(:each) do
      #   Kernel.stub!(:exit).and_return(nil)
      # end

      it "should use the HtmlFiles formatter by default" do
        config = Configuration.new
        config.parse!(["-t", "committed"])
        config.options[:formats].should == {'CucumberSkin::Formatter::HtmlFiles' => STDOUT}
      end

      it "should use the specified formatter" do
        config = Configuration.new
        config.parse!(["-f", "progress"])
        config.options[:formats].should == {'progress' => STDOUT}
      end
    end
  end
end
