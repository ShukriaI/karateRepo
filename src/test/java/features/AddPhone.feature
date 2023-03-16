@test
Feature: TEK Insurance API POst Service

  Background: 
    Given url appURL
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * def primaryPerson = call read("PostAccount.feature")
    * def id = primaryPerson.response.id
    * param primaryPersonId = id

  Scenario: add phone
    * path "/api/accounts/add-account-phone"
    * def info = Java.type("test.api.DataGenerator")
    * def phone = info.getPhone()
    * def phoneEx = info.getPhoneExtention()
    * def phoneT = info.getPhoneTime()
    * def phoneTy = info.getPhoneType()
    * request
      """
      {
      "phoneNumber": "#(phone)",
      "phoneExtension": "#(phoneEx)",
      "phoneTime": "#(phoneT)",
      "phoneType": "#(phoneTy)"
      }
      """
    * method post
    * status 201
    * print response

  Scenario: update phone
    * path "/api/accounts/update-account-phone"
    * def info = Java.type("test.api.DataGenerator")
    * def phone = info.getPhone()
    * def phoneEx = info.getPhoneExtention()
    * def phoneT = info.getPhoneTime()
    * def phoneTy = info.getPhoneType()
    * request
      """
        {
        "phoneNumber": "#(phone)",
        "phoneExtension": "#(phoneEx)",
        "phoneTime": "#(phoneT)",
        "phoneType": "#(phoneTy)"
        }
      """
    * method put
    * status 200
    * print response
