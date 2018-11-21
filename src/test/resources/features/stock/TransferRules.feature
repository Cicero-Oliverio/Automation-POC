Feature: Transfer Rules

  Background: Access Admin
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]

  Scenario Outline: Create transfer rules
    Given I access transfer rules page [--StockTransferRules]
    And I select country "<country>" [--HeaderComponent]
    And I select distribution center "<cd>" [--HeaderComponent]
    And I fill the fields of transfer rules page with correct information [--StockTransferRules]
    When I click in save button [--StockTransferRules]
    Then The confirmation prompt should display [--StockTransferRules]

    Examples:
      |country|   cd    |
      |Brasil | BARUERI |