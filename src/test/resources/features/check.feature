Feature: Check products in Catalog
  As a owner
  I want to check quantity of products exists

  Background:
    Given a product "Bread" with price 20.50 exists and 5 quantity
    And a product "Jam" with price 80.00 exists
    And a product "Peanut Butter" with price 100 exists

  Scenario: check 1 product
    When I check "Bread"
    Then "Bread" have 5 quantity

  Scenario: check multiple products
    When I check "Bread"
    And I check "Jam"
    And I check "Peanut Butter"
    Then "Bread" have 5 quantity
    Then "Jam" have 10 quantity
    Then "Peanut Butter" have 10 quantity

