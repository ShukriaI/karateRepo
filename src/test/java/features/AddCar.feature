@test
Feature: TEK Insurance API POst Service

  
  Background:
     Given url appURL
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    
    * def primaryPerson = callonce read("PostAccount.feature")
    * def id = primaryPerson.response.id
    * param primaryPersonId = id
  
  
  
  Scenario: add a Car
   
    * path "/api/accounts/add-account-car"
    * def generate = Java.type("test.api.DataGenerator")
    * def make = generate.getCarMake()
    * def model = generate.getCarModel()
    * def year = generate.getCarYear()
    * def licensePlate = generate.getLicense()
    * request
      """
      {
        "id": 100,
        "make": "#(make)",
        "model": "#(model)",
        "year": "#(year)",
        "licensePlate": "#(licensePlate)"
      }
      """
    * method post
    * status 201
    * print response
    
    
 Scenario: update car
 
    * path "/api/accounts/update-account-car"
    * def info = Java.type("test.api.DataGenerator")
    * def make = info.getCarMake()
    * def model = info.getCarModel()
    * def year = info.getCarYear()
    * def license = info.getLicense()
    * request 
    """
      {
        "id": 100,
        "make": "#(make)",
        "model": "#(model)",
        "year": "#(year)",
        "licensePlate": "#(licensePlate)"
      }
      """
     * method put
     * status 200
     * print response
    
    
    
    
    
    
    
    
    
    
