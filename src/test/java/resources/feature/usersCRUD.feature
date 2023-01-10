Feature: User Swagger application
  As a user I want to test User Application

  Scenario Outline: User CRUD test
    Given User application is running
    When I create new user by providing the information id "<id>" username "<username>" firstname "<firstname>" lastname "<lastname>" email "<email>" password "<password>" phone "<phone>" status "<userstatus>"
    Then I verify that the user is created with "<username>"
    And I update user with username "<username>"
    And I verify that user is updated
    And I delete user that created
    Then I verify user is deleted
    Examples:
      | id        | username  | firstname  |lastname       |email            |password         |phone         |userstatus |
      | 101       | test001   |mis        | Jhones        | shi@example.com | prime123         |78888110122   |1          |
      | 301       | test005   |unse         | shanie        | mis@example.com |  pass456        |74291030133   |3          |