@Useibdd
Feature: Gherkin Feature lexer
  In order to make it easy to control the Gherkin syntax
  As a Gherkin developer bent on Gherkin world-domination
  I want a feature lexer that uses a feature parser to
  make all the syntax decisions for me

  Background: 
    Given a "en", "ruby" "root" parser
	
  @tagScenario1 @UseIBDD
  Scenario: Keyword before feature
    Given the following text is parsed:
      """
      Scenario: Bullying my way to the head of the line
        Given I am a big bully of a scenario
        Then I should be caught by the syntax police(y)
      
      Feature: Too timid to stand up for myself
      """
    Then there should be parse errors on lines 1 through 3