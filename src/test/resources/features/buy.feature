Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given a product "Bread" with price 20.50 exists and 5 quantity
    And a product "Jam" with price 80.00 exists
    And a product "Peanut Butter" with price 100 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Peanut Butter" with quantity 2
    Then total should be 321.00

    Scenario: Buy one product with negative quantity
        When I buy "Bread" with quantity -2
        Then total should be 0.00

    Scenario: Buy more than quantity in stock
        When I buy "Bread" with quantity 10
        Then total should be 0.00

    Scenario: Buy product more than quantity in stock and enough product, will buy only enough product
        When I buy "Bread" with quantity 10
        When I buy "Jam" with quantity 1
        Then total should be 80.00