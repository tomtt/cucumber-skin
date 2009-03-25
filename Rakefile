# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'cucumber-skin'

task :default => 'spec:run'

PROJ.name = 'cucumber-skin'
PROJ.authors = 'Tom ten Thij'
PROJ.email = 'cucumber-skin@tomtenthij.nl'
PROJ.url = 'http://github.com/tomtt/cucumber-skin/'
PROJ.version = CucumberSkin::VERSION
PROJ.rubyforge.name = 'cucumber-skin'

PROJ.spec.opts << '--color'

# EOF
