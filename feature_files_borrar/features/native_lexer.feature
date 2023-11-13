@Useibdd
Feature: Native (C/Java) Lexer

  Background: 
    Given a "en", "native" "root" parser

  @tagScenario1 @UseIBDD
  Scenario: Parsing an empty feature
    Given the following text is parsed:
      """
      Feature: blah
      """
    Then there should be no parse errors

  Scenario: Parsing a comment
    Given the following text is parsed:
      """
      # A comment
      Feature: Hello
      """
    Then there should be no parse errors
