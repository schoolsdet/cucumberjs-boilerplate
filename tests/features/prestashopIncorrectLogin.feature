@sdet-school
Feature: Prestashop test
    I want to test if the prestashop-dev.sdet.school failed login screen displays an error

    Scenario: login with incorrect credentials
        Given I open the url "https://prestashop-dev.sdet.school/"
        And I pause for 2000ms
        And I click on the button "#_desktop_user_info>div"
        And I pause for 2000ms
        And I set "test@email.com" to the inputfield "#field-email"
        And I pause for 2000ms
        And I set "wrongPassword" to the inputfield "#field-password"
        And I pause for 1000ms
        And   I click on the button "#submit-login"
        And I pause for 1000ms
        Then  I expect that element "li[class='alert alert-danger']" has the class "displayed"
        

