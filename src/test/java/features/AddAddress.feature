@test
Feature: TEK Insurance API Post Service

  Background: 
    Given url appURL
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * def primaryPerson = callonce read("PostAccount.feature")
    * def id = primaryPerson.response.id


  Scenario: add Address
    * path "/api/accounts/add-account-address"
    * param primaryPersonId = id
    * def generate = Java.type("test.api.DataGenerator")
    * def address = generate.getAddressType()
    * def line1 = generate.getAddressLine()
    * def city = generate.getCity()
    * def state = generate.getState()
    * def postal = generate.getPostalCode()
    * def country = generate.getCountryCode()
    * request
      """
      {
      
      "addressType": "#(address)",
      "addressLine1": "#(line1)",
      "city": "#(city)",
      "state": "#(state)",
      "postalCode": "#(postal)",
      "countryCode": "#(country)",
      "current": true
      }

      """
    * method post
    * status 201
    * print response

  Scenario: update address
    * path "/api/accounts/update-account-address"
    * param primaryPersonId = id
    * def generate = Java.type("test.api.DataGenerator")
    * def address = generate.getAddressType()
    * def line1 = generate.getAddressLine()
    * def city = generate.getCity()
    * def state = generate.getState()
    * def postalCode = generate.getPostalCode()
    * def country = generate.getCountryCode()
    * request
      """
      {
      "id":"1841" ,
      "addressType":" #(address)",
      "addressLine1": "#(line1)",
      "city": "#(city)",
      "state": "#(state)",
      "postalCode": "#(postalCode)",
      "countryCode": "#(country)",
      "current": true
      }
      """
    * method put
    * status 200
    * print response
