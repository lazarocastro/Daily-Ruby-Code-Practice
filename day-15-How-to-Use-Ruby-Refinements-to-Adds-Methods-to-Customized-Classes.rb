require 'rspec'

module RubyContent
  refine String do # Refine String class
    def commentize
      "# #{self}"
    end
  end
end

module HtmlContent
  refine String do # Refine String class
    def commentize
      "<!-- #{self} -->"
    end
  end
end

class ContentController
  using RubyContent # Using our created "RubyContent" module
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

class HtmlController
  using HtmlContent # Using our created "HtmlContent" module
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

# UNCOMMENT IF YOU WANT TO TEST WITH "seeing_is_believing"
#
# cc = ContentController.new("My String")
# cc.hidden_content
# 
# html = HtmlController.new("My HTML content")
# html.hidden_content

describe 'Refining String for a specific module' do
  it 'changes the behavior of the string method to make ir reder as a comment' do
    cc = ContentController.new("My String")
    expect(cc.hidden_content).to eq("# My String")
  end
  
  it 'test of html comment' do
    html = HtmlController.new("My String")
    expect(html.hidden_content).to eq("<!-- My String -->")
  end
end
