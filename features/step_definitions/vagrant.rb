Given(/^development vm is up and provisioned$/) do
  `vagrant up`
end

When(/^I browse to vm ip (\d+\.\d+\.\d+\.\d+)$/) do |vm_ip|
  visit "http://#{vm_ip}/"
end

Then(/^I should see "(.*?)"$/) do |expected_content|
  expect(page).to have_content(expected_content)
end
