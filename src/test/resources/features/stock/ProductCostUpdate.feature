Feature: Product Cost Update

  Background: Access Admin
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]

  Scenario Outline: Update product cost
    Given I access product cost update page [--StockProductCostUpdate]
    And I select country "<country>" [--HeaderComponent]
    And I select distribution center "<cd>" [--HeaderComponent]
    And  I select product "<sku>"[--StockProductCostUpdate]
    And  I fill product origin "<origin>" and grossCost "<grossCost>" and netCost"<netCost>"[--StockProductCostUpdate]
    When I click in save button [--StockProductCostUpdate]
    Then The confirmation prompt should display [--StockProductCostUpdate]

    Examples:
      |country|   cd    |     sku       |origin  |grossCost|netCost|
      |Brasil | BARUERI |132-1652-006-38|NACIONAL|   40    |  20   |