Feature: GET API with Query Parameters

  Scenario: Get all active users
    * def query = {status:'active',gender : 'female', id:4003}
    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response


  Scenario: Get all active users
    * def query = {status:'active'}
    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * def jsonResponse =  response
    * print jsonResponse
    * def userCount = jsonResponse.data.length
    * print userCount