Feature: LogIn
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

	Scenario: Signup for the first time
  Given I am on the Home page
  When I press "join"
  And I fill in "Firstname" with "Guriqbal Singh"
  And I fill in "Lastname" with "Sudan"
  And I fill in "Emailaddress" with "Kangaroo1421@gmail.com"
  And I fill in "Password" with "America@01"
  And I fill in "ConfirmPassword" with "America@01"
  And I Checked "Terms and Conditions"
  And I press "Join"
  Then I should be signed up

  @AutomationTest1
   Scenario: Login with valid credentials
  Given I am on the Home page
  #When I press Sign In
  #And I fill in Emailaddress with "Kangaroo1421@gmail.com"
  #And I fill in Password with "America@01"
  #And I Checked Remember me
  #And I press Login
  When I enter valid username and password
  Then I should go to Profile Page
  
   Scenario: Already have an Account
  Given I am on the Home page
  When I press "join"
  And I press "Login"
  Then I should go to Log in form

  Scenario: Forgot password
  Given I am on the Home page
  When I press "Sign In"
  And I press "Forgot your password?"
  Then I should go to "send verification email" form
