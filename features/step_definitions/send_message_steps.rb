Given /^I am on the home screen$/ do
  wait_for_elements_exist(["edittext id:'edit_message'"])
end

Then /^I should see message "([^"]*)"$/ do |message|
  raise "Message doesnot appear" unless element_exists("textView text:'#{message}'")==true
end

When /^I enter "([^"]*)" as message$/ do |message|
  query("edittext id:'edit_message'", :setText=>"#{message}")
  touch("button marked:'Send'")
end