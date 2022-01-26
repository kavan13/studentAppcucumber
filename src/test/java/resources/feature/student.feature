Feature: Testing different request on the student application
@SMOKE
  Scenario: Check if the student application can be accessed by users
    When User sends a GET request to list endpoint
    Then User must get back a valid status code 200

  Scenario Outline: Create a new student & verify if the student is added
    When I create a new student by providing the information firstName "<firstName>" lastName "<lastName>" email "<email>" programme "<programme>" courses "<courses>"
    Then I verify that the student with "<email>" is created
    Examples:
      | firstName | lastName | email            | programme        | courses |
      | Abcd    | abcd1  | abcd1@gmail.com | Computer Science | JAVA    |
      | Abcd2    | xyz3   | xyz2@gmail.com | Api Testing      | Python  |

Scenario: Deleted student and verify if student is deleted
  When I deleted student
  Then I verify if student deleted






