require 'cucumber'
require 'cucumber-skin/formatter/html_files'
require 'cucumber-skin/cli/configuration'

module CucumberSkin
  module Cli
    class Main < Cucumber::Cli::Main
      private

      def configuration
        return @configuration if @configuration

        @configuration = Configuration.new(@out_stream, @error_stream)
        @configuration.parse!(@args)
        @configuration
      end
    end
  end
end

CucumberSkin::Cli::Main.step_mother = self
