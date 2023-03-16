Feature: TEK Insurance DB Validation
  @DataBase
  Scenario: Database Connection Test
    * def getAPIRequest = call read("getAccount.feature")
    * def id = getAPIRequest.response.id
    * print id
    * def dataBaseUtility = Java.type("test.api.DataBaseUtility")
    * def dataBaseEmail = dataBaseUtility.result("select email from primary_person where id = '"+id+"'","email")
    * def responseEmail = getAPIRequest.response.email
    * match responseEmail == dataBaseEmail
    * print dataBaseEmail
    * print responseEmail
    #* def query = "select id,email,title first_name,last_name,gender,marital_status,emploment_status, 
    #* def da