Feature: BBC Login

  Scenario: Inputting incorrect username credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I input an incorrect username
    Then I receive an error for not fining the account
