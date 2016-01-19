Given(/^I started the app$/) do
  # Waiting for app to install and start
  # This is here for general purposes
end

Then(/^I am on the login page$/) do
  page(LoginPage).await
end

Then(/^the login page data is displayed correctly$/) do
  page(LoginPage).validate_login_page
end

When(/^I trigger the (.*) login error$/) do |error|
  page(LoginPage).trigger_error(error)
end

Then(/^the (.*) error message is displayed$/) do |error|
  page(LoginPage).validate_error(error)
end

And(/^I am on the login Page$/) do
  page(LoginPage).await
end

When(/^I login with a valid email and password$/) do
  user = LOGIN[:valid_account]
  page(LoginPage).login(user[:email_address], user[:password])
end
