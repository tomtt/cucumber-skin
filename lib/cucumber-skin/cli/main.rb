require 'cucumber'

module CucumberSkin
  module Cli
    class Main < Cucumber::Cli::Main
    end
  end
end

CucumberSkin::Cli::Main.step_mother = self
