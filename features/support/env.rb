require 'rubygems'
require 'spec/expectations'
require 'fileutils'
require 'ruby-debug'

After do
  FileUtils.rm_rf 'examples/self_test/tmp'
  FileUtils.mkdir 'examples/self_test/tmp'
end
