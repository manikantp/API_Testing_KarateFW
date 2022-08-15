Feature: GET API testing

  Scenario: get user details and posts
    Given url 'https://gorest.co.in/public/v1/users/11/posts'
    When method GET
    Then status 200
    * print response
    * print response[0].title