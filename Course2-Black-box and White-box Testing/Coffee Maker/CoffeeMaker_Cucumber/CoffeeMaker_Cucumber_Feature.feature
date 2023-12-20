Feature: CoffeeMaker Feature

  Scenario: Add inventory with well-formed quantities
    Given a coffee maker with the default inventory
    When we add inventory with well-formed quantities
    Then we do not get an exception trying to read the inventory quantities

  Scenario: Add inventory with malformed quantities
    Given a coffee maker with the default inventory
    When we add inventory with malformed quantities
    Then we get an inventory exception

  Scenario: Make coffee with a valid recipe
    Given a coffee maker with one valid recipe
    When we make coffee, selecting the valid recipe and paying more than the coffee costs
    Then we get the correct change back

  Scenario: Add many recipes
    Given a coffee maker with one valid recipe
    When we add many recipes
    Then some recipes might not be added
