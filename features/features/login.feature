Feature: Login Page

  Background:
    Given I started the app

  Scenario: Validate starting app opens to login page
    Then I am on the login page

  Scenario: Validate Login Page
    And I am on the login page
    Then the login page data is displayed correctly

  Scenario: Valid Login
    And I am on the login Page
    When I login with a valid email and password
    Then I am on the home page

  Scenario Outline: Validate login form errors
    And I am on the login page
    When I trigger the <type_of> login error
    Then the <type_of> error message is displayed
    Examples:
    |type_of          |
    |invalid email    |
    |invalid password |
