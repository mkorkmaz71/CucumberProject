Feature: Verify Login Feature

  Background:
    Given user opens the website
    And verify user is on login page

  @smoke @chirag
  Scenario: Verify user can login with valid credentials
    When user enters username "admin" and password "admin@123"
    Then verify user is on home page

  @regression
  Scenario Outline: Verify user can login with valid username and invalid password
    When user enters username "<username>" and password "<password>"
    Then verify user could not login

    Examples:
    | username | password |
    |demo      |demo@123  |
    |          |          |
    |ADMIN     |ADMIN@123 |
    |admin     |demo@123  |
    |demo      |admin@123 |