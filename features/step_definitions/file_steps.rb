Then /^the directory ([^\"]*) should exist$/ do |directory_name|
  File.should be_directory(directory_name)
end

Then /^the file (.*) should exist$/ do |file_name|
  File.should exist(file_name)
end
