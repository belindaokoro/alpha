Features: Search Property For Sale
  As a customer
  I want the ability to search for any property of my choice in any location
  so that I could buy the property

  Scenario Outline: Customer can search for any property
    Given I navigate to zoopla homepage
    When I enter a "<location>" in the search text box
    And I select a "<MinPrice>" from the Min price dropdown
    And I select a "<MaxPrice>" from the Max price dropdown
    And I select a "<Property>" from the property type dropdown
    And I select a "<Bed>" from Bedrooms dropdown
    And I click on Search button
    Then a list of "<PropertyTypes>" in "<location>" are displayed

    Examples:
    |location|MinPrice|MaxPrice|Property|Bed|PropertyType|
    |Manchester|£120,000|£230,000|Houses|3+ |Houses      |
    |London    |£250,000|£400,000|Farms/Land|No min|Property|
    |Coventry  |£120,000|£230,000|Flats     |3+    |Flats   |


  Scenario Outline: Customer cannot search for property with missing values
    Given I navigate to zoopla homepage
    When I enter a "<location>" in the search text box
    And I select a "<MinPrice>" from the Min price dropdown
    And I select a "<MaxPrice>" from the Max price dropdown
    And I select a "<Property>" from the property type dropdown
    And I select a "<Bed>" from Bedrooms dropdown
    And I click on Search button
    Then an error message is displayed


    Examples:
      |location|MinPrice|MaxPrice|Property|Bed|PropertyType|
      |Manchester|£120,000|£230,000|Houses|3+ |Houses      |
      |London    |£250,000|£400,000|Farms/Land|No min|Property|
      |Coventry  |        |        |Flats     |3+    |Flats   |
      |Birmingham|        |        |          |      |        |


  Scenario Outline: Error page is displayed for invalid search
    Given I navigate to zoopla homepage
    When I enter a "<location>" in the search text box
    And I select a "<MinPrice>" from the Min price dropdown
    And I select a "<MaxPrice>" from the Max price dropdown
    And I select a "<Property>" from the property type dropdown
    And I select a "<Bed>" from Bedrooms dropdown
    And I click on Search button
    Then an error result page is displayed

    Examples:
      |location|MinPrice|MaxPrice|Property|Bed|PropertyType|
      |M|£120,000|£230,000|Houses|3+ |Houses      |
      |London    |£250,000|£400,000|Farms/Land|No min|Property|
      |Coventry  |        |        |Flats     |3+    |Flats   |
      |Birmingham|        |        |          |      |        |




