Feature: TEK Insurance API Test

  #@addAccount
  Scenario: Post Primary Account
    Given url "https://tek-insurance-api.azurewebsites.net"
    * def tokenValue = call read("GenerateToken.feature")
    * def token = tokenValue.response.token
    * header Authorization = "Bearer " + token
    * path "/api/accounts/add-primary-account"
    * def generator = Java.type("test.api.DataGenerator")
    * def email = generator.getEmail()
    * def name = generator.getFirstName()
    * def lastName = generator.getLastName()
    * def title = generator.getTitle()
    * def gender = generator.getGender()
    * def maritalStatus = generator.getMaritalStatus()
    * def empolymentStatus = generator.getEmploymentStatus()
    * def dateOfBirth = generator.getDOB()
    * request
      """
      {
       
       "email": "#(email)",
       "firstName": "#(name)",
       "lastName": "#(lastName)",
       "title": "#(title)",
       "gender": "#(gender)",
       "maritalStatus": "#(maritalStatus)",
       "employmentStatus": "#(empolymentStatus)",
       "dateOfBirth": "#(dateOfBirth)",
       "new": true
      }
      """
    * method post
    * status 201
    * print response
