@Useibdd
Feature: Gherkin Feature lexer/parser
  In order to make it easy to control the Gherkin syntax
  As a Gherkin developer bent on Gherkin world-domination
  I want a feature lexer that uses a feature parser to
  make all the syntax decisions for me

  Background: 
    Given a "en", "native" "root" parser

  @tagScenario1 @UseIBDD
  Scenario: Correctly formed feature
    When the following text is parsed:
      """
      # Apologies to Bill Watterson
      @cardboard_box @wip
      Feature: Transmogrification
        As a young boy with a hyperactive imagination
        I want a cardboard box
        In order to transform the ennui of suburban life into something
          befitting my imagination
        
        Background: 
          Given I have a transmogrifier
          And I am a member of G.R.O.S.S
        
        Scenario: Whoozit to whatzit transmogrification
          Given I have a whoozit
          When I put it in the transmogrifier
          And I press the "transmogrify" button
          Then I should have a whatzit
      
        Scenario Outline: Imaginary Beings
          Given I have a <boring being>
          When I transmogrify it with the incantation:
          \"\"\"
          ALAKAZAM!
          \"\"\"
          Then I should have an <exciting being>
      
          Examples:
          | boring being | exciting being |
          | Sparrow      | Alicanto       |
          | Goldfish     | Baldanders     |
          | Cow          | Hsiao          |
          
        Scenario: Sense of humor detection
          Given the following excerpt:
            \"\"\"
            WOMAN:  Who are the Britons?
            ARTHUR:  Well, we all are. we're all Britons and I am your king.
            WOMAN:  I didn't know we had a king.  I thought we were an autonomous
                collective.
            DENNIS:  You're fooling yourself.  We're living in a dictatorship.
                A self-perpetuating autocracy in which the working classes--
            WOMAN:  Oh there you go, bringing class into it again.
            DENNIS:  That's what it's all about if only people would--
            ARTHUR:  Please, please good people.  I am in haste.  Who lives
                in that castle?  
            \"\"\"
          When I read it
          Then I should be amused
      """
    Then there should be no parse errors