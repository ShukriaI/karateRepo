@test
Feature: TEK Insurance API Schema Validation

  Scenario: 
    Given url appURL
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * path "/api/accounts/get-primary-account"
    * param primaryPersonId = 32
    * method get
    * print response
    * match response ==
      """
      {
       id: '#number',
      email: '#string',
      title: '#string',
      firstName: '#string',
      lastName: '#string',
      gender: '#string',
      maritalStatus: '#string',
      employmentStatus: '#string',
      dateOfBirth: '#present',
      user: '#present'
      }

      """
    * match responseType == 'json'
    * match responseType != 'xml'
    * assert responseTime <2000
    