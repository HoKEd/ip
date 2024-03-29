require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'gherkin/parser'

module Gherkin
  describe Parser do
    before do
      @listener = mock('listener')
      @parser = Parser.new(@listener, true)
    end

    it "should delegate events to the listener" do
      @listener.should_receive(:comment).with("# Content", 1)
      @parser.comment("# Content", 1)
    end

    it "should raise helpful error messages by default" do
      lambda { 
        @parser.scenario("Scenario", "My pet scenario", 12) 
      }.should raise_error(/Parse error on line 12\. Found scenario when expecting one of: comment, feature, tag\. \(Current state: root\)\.$/)
    end

    it "should delegate an error message when raise on error is false" do
      @listener.should_receive(:syntax_error).with(sym(:root), sym(:background), a([:comment, :feature, :tag]), 1)
      @parser = Parser.new(@listener, false)
      @parser.background("Background", "Content", 1)
    end
  end
end
