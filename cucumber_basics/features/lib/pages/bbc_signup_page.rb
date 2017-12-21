require 'capybara/dsl'

class BbcSignupPage
  include Capybara::DSL

  REGISTER_PAGE_LINK = 'https://account.bbc.com/register' unless const_defined?(:REGISTER_PAGE_LINK)
  DAY_FIELD_ID = 'day-input' unless const_defined?(:DAY_FIELD_ID)
  MONTH_FIELD_ID = 'month-input' unless const_defined?(:MONTH_FIELD_ID)
  YEAR_FIELD_ID = 'year-input' unless const_defined?(:YEAR_FIELD_ID)
  DATE_ERROR_CLASS = 'form-message__text' unless const_defined?(:DATE_ERROR_CLASS)
  SUBMIT_BUTTON_ID = 'submit-button' unless const_defined?(:SUBMIT_BUTTON_ID)
  EMAIL_FIELD_ID = 'user-identifier-input' unless const_defined?(:EMAIL_FIELD_ID)
  PASSWORD_FIELD_ID = 'password-input' unless const_defined?(:PASSWORD_FIELD_ID)
  POSTCODE_FIELD_ID = 'postcode-input' unless const_defined?(:POSTCODE_FIELD_ID)
  GENDER_SELECTOR = 'Gender' unless const_defined?(:GENDER_SELECTOR)
  GENDER = 'Male' unless const_defined?(:GENDER)
  NO_THANKS_BUTTON_CLASS = 'button-text' unless const_defined?(:NO_THANKS_BUTTON_CLASS)
  REGISTER_BUTTON_ID = 'submit-button' unless const_defined?(:REGISTER_BUTTON_ID)
  EMAIL_ERROR_TEXT_ID = 'form-message-email' unless const_defined?(:EMAIL_ERROR_TEXT_ID)


  def visit_register_page
    visit(REGISTER_PAGE_LINK)
  end

  def day_field
    find_field(:id, DAY_FIELD_ID)
  end

  def fill_in_day(day)
    fill_in(DAY_FIELD_ID, with: day)
  end

  def month_field
    find_field(:id, MONTH_FIELD_ID)
  end

  def fill_in_month(month)
    fill_in(MONTH_FIELD_ID, with: month)
  end

  def year_field
    find_field(:id, YEAR_FIELD_ID)
  end

  def fill_in_year(year)
    fill_in(YEAR_FIELD_ID, with: year)
  end

  def date_error_text
    find(:id, 'form-message-dateOfBirth').text
  end

  def continue_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_continue_button
    continue_button.click
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: "#{rand(10000000)}#{email}")
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_FIELD_ID, with: postcode)
  end

  def select_gender
    select(GENDER, from: GENDER_SELECTOR)
  end

  def click_no_thanks_button
    find(:xpath, ".//label[@for='optOut']/div/div").click
  end

  def click_register_button
    find_button(REGISTER_BUTTON_ID).click
  end

  def incorrect_email_text
    find(:id, EMAIL_ERROR_TEXT_ID).text
  end

end
