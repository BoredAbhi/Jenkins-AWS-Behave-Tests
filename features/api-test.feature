Feature: API Testing Example

  Scenario: Get user details
    Given I have the API endpoint "https://jsonplaceholder.typicode.com/users/1"
    When I send a GET request
    Then the response status code should be 200
