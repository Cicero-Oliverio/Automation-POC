Feature: Manual Correction

  Background: Access Admin
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]

  Scenario: Entry adjustment in stock
    Given I access manual correction page [--StockManualCorrection]
    And I select country "Brasil" [--HeaderComponent]
    And I select distribution center "BARUERI" [--HeaderComponent]
    And I fill the fields of manual correction page with correct information [--StockManualCorrection]
    When I click in save button [--StockManualCorrection]
    Then The confirmation prompt should display [--StockManualCorrection]

  Scenario: Entry adjustment in stock fail form validation
    Given I access manual correction page [--StockManualCorrection]
    And I select country "Brasil" [--HeaderComponent]
    And I select distribution center "BARUERI" [--HeaderComponent]
    And I fill the fields of manual correction page with missing information [--StockManualCorrection]
    When I click in save button [--StockManualCorrection]
    Then The form should display validation fields [--StockManualCorrection]