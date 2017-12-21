Feature: BBC Register

  Scenario: Inputting incorrect date of birth details shows an error
    Given I access the bbc login page
    And I click on the register link
    And I enter a valid day
    And I enter a valid month
    And I enter an invalid year
    When I click continue
    Then I receive an error for having an incorrect date

  Scenario: Inputting incorrect email shows an error
    Given I access the bbc login page
    And I click on the register link
    And I enter a valid day
    And I enter a valid month
    And I enter a valid year
    And I click continue
    And I make the email input invalid
    And I fill in the rest of the form correctly
    When I click submit
    Then I receive an error for having an incorrect date

  Scenario: Inputting correct details signs up user
    Given I access the bbc login page
    And I click on the register link
    And I enter a valid day
    And I enter a valid month
    And I enter a valid year
    And I click continue
    And I make the email input valid
    And I fill in the rest of the form correctly
    When I click submit
    Then I sign in
