Given /^a (.*) build$/ do |build|
  resp = case build
         when 'clean'
           !File.exists?('../../publish') && !File.exists?('../../intermediate')
         else
           false
         end
  resp
end
