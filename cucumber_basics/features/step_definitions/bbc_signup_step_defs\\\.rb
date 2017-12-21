

Given("I click on the register link") do
  bbc_sign_in_page.click_register_link
end

And("I enter a valid day") do
  bbc_signup_page.fill_in_day('1')
end

And("I enter a valid month") do
    bbc_signup_page.fill_in_month('2')
end

And("I enter an invalid year") do
  bbc_signup_page.fill_in_year('100')
end

When("I click continue") do
  bbc_signup_page.click_continue_button
end

Then("I receive an error for having an incorrect date") do
  bbc_signup_page.date_error_text
end

Given("I enter a valid year") do
  bbc_signup_page.fill_in_year('1970')
end

And("I make the email input invalid") do
  bbc_signup_page.fill_in_email('test3@@gmail.com')
end

And("I fill in the rest of the form correctly") do
  bbc_signup_page.fill_in_password('Password4test')
  bbc_signup_page.fill_in_postcode('TW8 9LB')
  bbc_signup_page.select_gender
  bbc_signup_page.click_no_thanks_button
  bbc_signup_page.click_register_button
end

When("I click submit") do
  bbc_signup_page.click_register_button
end

Given("I make the email input valid") do
  bbc_signup_page.fill_in_email('test3@gmail.com')
end

Then("I sign in") do

end
