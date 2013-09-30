When(/^I load the page$/) do
  visit root_path
end

Then(/^I should see text no longer than (\d+) words$/) do |num|
  page.should have_css("div.article")
end
