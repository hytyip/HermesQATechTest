Feature: Registering users
  As a user
  In order to use the site
  I want to be able to register
  
  Scenario: User Registration
    When I register a new user "john" with email "john@example.com" and password "password1"
    Then the user "john" should be registered, with email "john@example.com" and password "password1"
    
  Scenario: User lookup
    Given I have a pre-registered user with name "john", email "john@example.com", and password "password1"
    When I lookup details of user "john"
    Then I should see a user with email "john@example.com" and password "password1"
    
  Scenario: User not found
    When I lookup details of user "user-who-doesnt-exist"
    Then I should receive a Not Found error
	
  Scenario: Register An Long Username 
    When I register a new user "john1234567890" with email "john1234567890@example.com" and password "password1"
    Then the user "john1234567890" should be registered, with email "john1234567890@example.com" and password "password1"
	
  Scenario: Register A Numerical Username 
    When I register a new user "1234567" with email "1234567@example.com" and password "password1"
    Then the user "1234567" should be registered, with email "1234567@example.com" and password "password1"
	
  Scenario: Register the same name again
    When I register a new user "john" with email "john@example.com" and password "password1"
    Then the user "john" should be registered, with email "john@example.com" and password "password1"