Feature: Home Page

  Background:
    Given I login with a valid email and password
    And I am on the home page

  Scenario: Validate page content for home page
    Then the home page data is displayed correctly
  @run
  Scenario Outline: Validate Male and Female Checkbox selections
    When I select <gender> radio button
    And I tap the new button
    Then the toast message is displayed for <gender>
    Examples:
    |gender|
    |male  |
    |female|

