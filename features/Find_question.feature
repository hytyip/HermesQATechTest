Feature: Find Questions from a specific user
  To find a question title 
  and content from a specific user
  
  Background: 
    Given I have a pre-registered user with name "john", email "john@example.com", and password "password1"
    
  Scenario: Find a question from an user
    When "john" asks "What's the answer?" with content "What exactly is the answer?"
    And I would like to find the questions from "john"
    Then there should be a question with title "What's the answer?" and content "What exactly is the answer?"