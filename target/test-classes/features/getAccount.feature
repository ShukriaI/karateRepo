Feature: TEK Insurance API GET Service

  #@addCar
  Scenario: Get Primary Account API Test
    Given url "https://tek-insurance-api.azurewebsites.net"
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * path "/api/accounts/get-primary-account"
    * def primaryPerson = call read("PostAccount.feature")
    * def id = primaryPerson.response.id
    * param primaryPersonId = id
    * method get
    * print response
    * status 200
    * def responseID = response.id
    * match responseID == id
    * def responseEmail = response.email
    * match responseEmail == primaryPerson.response.email
