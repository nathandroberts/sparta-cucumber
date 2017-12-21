Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

Given("I move to the sign in page") do
  bbc_homepage.sign_in_link
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_link
end

When("I input my DOB") do
  bbc_register_page.enter_DOB(01, 'jan', 2000)
  bbc_register_page.click_next_button
end

And(/^I input the necessary details with the password details (.*)$/) do |pass|
  bbc_register_page.fill_in_email('test@gmail.com')

  bbc_register_page.fill_in_password(pass)

  bbc_register_page.password_field.send_keys :tab
end
#
Then(/^I receive the corresponding error (.*)$/) do |error_message|
  expect(bbc_register_page.check_error_message).to eq error_message
end
# When(/^I input the necessary details with the postcode details (.*)$/) do |postcode|
#   bbc_register_page.fill_in_email("#{rand(999999)}test@gmail.com")
#
#   bbc_register_page.fill_in_password('Password4test')
#
#   bbc_register_page.password_field.send_keys :tab
#
#   bbc_register_page.fill_in_postcode('Password4test')
#
#   bbc_register_page.postcode_field.send_keys :tab
# end
