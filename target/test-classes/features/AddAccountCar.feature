Feature: TEK Insurance API POst Service

  
  Scenario: Add Car Service Test
    Given url appURL
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * def primaryPerson = call read("PostAccount.feature")
    * def id = primaryPerson.response.id
    * param primaryPersonId = id
    * path "/api/accounts/add-account-car"
    * request
      """
      {
      "make": "Toyota",
      "model": "Camry",
      "year": "1999",
      "licensePlate": "Tek09"
      }
      """
    * method post
    * print response
