require 'cucumber'

module CucumberSkin
  module Cli
    class Configuration < Cucumber::Cli::Configuration
      def parse!(args)
        unless args.include?("-f") || args.include?("--format")
          args.unshift("-f", "CucumberSkin::Formatter::HtmlFiles")
        end
        super
      end
    end
  end
end
