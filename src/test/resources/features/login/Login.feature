Feature: Login access

  Scenario: Login success
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]