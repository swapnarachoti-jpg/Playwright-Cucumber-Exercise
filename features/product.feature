Feature: Product Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  # Validate sorting by price using Scenario Outline
  Scenario Outline:  Validate product sort by price <sort>
    When  I will login as "standard_user"
    And  I  sort the items by "<sort>"
     Then  the products should be sorted by price"<order>"
  Examples:
    | sort                  | order |
    | Price (low to high)   |asc    |
    | Price (high to low)   |desc   |
    
    
