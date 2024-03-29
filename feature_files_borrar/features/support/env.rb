# I'm sure there's a better way than this...
%w{/../../lib /../../spec/gherkin}.each do |path|
  $LOAD_PATH << File.expand_path(File.dirname(__FILE__) + path)
end

require 'gherkin'
require "sexp_recorder"

module TransformHelpers
  def tr_line_number(step_arg)
    /(\d+)$/.match(step_arg)[0].to_i
  end

  def tr_line_numbers(step_arg)
    if step_arg =~ /through/
      Range.new(*step_arg.scan(/\d+/).collect { |i| i.to_i })
    else
      step_arg.scan(/\d+/).collect { |i| i.to_i }
    end
  end
end

class GherkinWorld
  include TransformHelpers
  
  def initialize
    @listener = Gherkin::SexpRecorder.new
  end
end

World do 
  GherkinWorld.new
end
