@sdet-school
Feature: Prestashop test
    I want to test Prestashop on correct login will display user name

    Scenario: login with valid credentials
        Given I open the url "https://prestashop-dev.sdet.school/"
        And I pause for 2000ms
       When I click on the button "#_desktop_user_info>div"
        And I pause for 2000ms
        And I set "test@email.com" to the inputfield "#field-email"
        And I pause for 2000ms
        And I set "Password_100$#" to the inputfield "#field-password"
        And I pause for 3000ms
        And   I click on the button "#submit-login"
        And I pause for 3000ms
        Then  I expect that element ".account>span" contains the text "Felix Anderman"

