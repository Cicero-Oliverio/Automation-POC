Feature: Stock Reviews

  Background: Access Admin
    Given I am at admin [--Login]
    When I do login with automation user [--Login]
    Then I access initial page [--Login]

  Scenario: Consult stock reviews
    Given I access stock reviews page [--StockReviews]
    And I select country "Argentina" [--HeaderComponent]
    And I validate the reviews table structure with 16 columns [--StockReviews]
      | CD SAÍDA |
      | CD ENTRADA |
      | DATA      |
      | SISTEMA |
      | SKU     |
      | QTD. |
      | QTD.ESTOQUE. |
      | MOVIMENTAÇÃO |
      | ALMOXARIFADO SAÍDA |
      | ALMOXARIFADO ENTRADA |
      | CRÍTICA |
      | AÇÕES |
    When I click on the update button [--StockReviews]
    Then I see zero or more stock reviews on the grid [--StockReviews]
    And I click on the export button [--StockReviews]