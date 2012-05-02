Then /^it should make the required directories$/ do
  dirs = File.exists?('publish') && File.exists?('intermediate')
  dirs.should == true
end
