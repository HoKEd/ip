# encoding: utf-8
require File.dirname(__FILE__) + '/../../spec_helper'

module Gherkin
  module Lexer
    shared_examples_for "a Gherkin lexer lexing py_strings" do
            
      def ps(content)
        '"""%s"""' % ("\n" + content + "\n")
      end
      
      it "should provide the amount of indentation of the triple quotes to the listener" do
str = <<EOS
Feature: some feature
  Scenario: some scenario
    Given foo
    """
      Hello
    Goodbye
    """
    Then bar
EOS
        @listener.should_receive(:py_string).with("  Hello\nGoodbye", 4)
        @lexer.scan(str)
      end

      it "should parse a simple py_string" do
        @listener.should_receive(:py_string).with("I am a py_string", 1)
        @lexer.scan ps("I am a py_string")
      end

      it "should parse an empty py_string" do
        @listener.should_receive(:py_string).with("", 4)
        @lexer.scan("Feature: Hi\nScenario: Hi\nGiven a step\n\"\"\"\n\"\"\"")
      end

      it "should treat a string containing only newlines as only newlines" do
py_string = <<EOS
"""



"""
EOS
        @listener.should_receive(:py_string).with("\n\n", 1)
        @lexer.scan(py_string)
      end
      
      it "should parse content separated by two newlines" do
        @lexer.scan ps("A\n\nB")
        @listener.to_sexp.should == [
          [:py_string, "A\n\nB", 1],
        ]
      end
      
      it "should parse a multiline string" do
        @listener.should_receive(:py_string).with("A\nB\nC\nD", 1)
        @lexer.scan ps("A\nB\nC\nD")
      end
            
      it "should ignore unescaped quotes inside the string delimeters" do
        @listener.should_receive(:py_string).with("What does \"this\" mean?", 1)
        @lexer.scan ps('What does "this" mean?')
      end
      
      it "should preserve whitespace within the triple quotes" do
str = <<EOS
    """
      Line one
 Line two
    """
EOS
        @listener.should_receive(:py_string).with("  Line one\nLine two", 1)
        @lexer.scan(str)
      end
            
      it "should preserve tabs within the content" do
        @listener.should_receive(:py_string).with("I have\tsome tabs\nInside\t\tthe content", 1)
        @lexer.scan ps("I have\tsome tabs\nInside\t\tthe content")
      end
  
      it "should handle complex py_strings" do
py_string = <<EOS
# Feature comment
@one
Feature: Sample

  @two @three
  Scenario: Missing
    Given missing

1 scenario (1 passed)
1 step (1 passed)

EOS
        
        @listener.should_receive(:py_string).with(py_string, 1)
        @lexer.scan ps(py_string)
      end
 
      it "should allow whitespace after the closing py_string delimiter" do
str = <<EOS
    """
      Line one
    """           
EOS
        @listener.should_receive(:py_string).with("  Line one", 1)
        @lexer.scan(str)
      end

      it "should preserve the last newline(s) at the end of a py_string" do
str = <<EOS
     """
     PyString text


     """
EOS
        @listener.should_receive(:py_string).with("PyString text\n\n",1)
        @lexer.scan(str)
      end        
    end
  end
end
