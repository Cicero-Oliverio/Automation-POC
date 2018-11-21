Feature: Customer Service

  Background: Access Admin
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]

  Scenario: Change e-mail of person customer
    Given I access customer service page [--CustomerService]
    And I search document customer "09855644662" [--CustomerService]
    When  I change the e-mail at customer [--CustomerService]
    Then the button should show e-mail update text [--CustomerService]

  Scenario: Redefine password by e-mail
    Given I access customer service page [--CustomerService]
    When I click at the button for redefine password [--CustomerService]
    Then the button should show the sent e-mail text [--CustomerService]

  Scenario: Generate temporary password
    Given I access customer service page [--CustomerService]
    When I click at the button for generate temporary password [--CustomerService]
    And I type the new temporary password [--CustomerService]
    And I click at the confirm button [--CustomerService]
    Then the button should show the password text changed [--CustomerService]
