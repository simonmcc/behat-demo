Feature: LoginScreen
  In order to use the site
  As a website user
  I need to login

  Scenario: I see a login screen
    Given I am on "/"
    Then I should see "Sign In"

  Scenario: I login with bad credentials
    Given I am on "/"
    When I fill in "email" with "bad@login"
    And I fill in "Password" with "badpassword"
    And I press "Sign In"
    Then the response should contain "Invalid username or password!"
