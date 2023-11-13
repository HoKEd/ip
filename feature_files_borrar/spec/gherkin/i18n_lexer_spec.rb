#encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module Gherkin
  describe I18nLexer do
    before do
      @lexer = I18nLexer.new(SexpRecorder.new)
    end

    it "should store the i18n language of the last scanned feature" do
      @lexer.scan("# language: fr\n")
      @lexer.language.key.should == "fr"
      @lexer.scan("# language: no\n")
      @lexer.language.key.should == "no"
    end

    it "should use English i18n by default" do
      @lexer.scan("Feature: foo\n")
      @lexer.language.key.should == "en"
    end
  end
end
