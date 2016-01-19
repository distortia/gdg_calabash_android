Then(/^I am on the home page$/) do
  page(HomePage).await
end

Then(/^the home page data is displayed correctly$/) do
  page(HomePage).validate_home_page
end

When(/^I select (.*) radio button$/) do |gender|
  page(HomePage).select_gender(gender)
end

And(/^I tap the new button$/) do
  page(HomePage).tap_new_button
end

Then(/^the toast message is displayed for (.*)$/) do |gender|
  page(HomePage).validate_toast_message(gender)
end
