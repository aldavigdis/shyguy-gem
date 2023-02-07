# frozen_string_literal: true

# The main Shyguy class
class Shyguy
  VERSION = '0.1.0'

  SEPARATOR    = '|'
  SYMBOL       = "\u00AD"
  ALTERNATIVES = ['&shy;', "\u00AD", '&#xAD;', '&#173;', '&shy;'].freeze

  attr_reader :original_text, :shy, :stripped

  def initialize(text)
    @original_text = text
    normalize
    strip_hyphenation
  end

  def self.display_shy(text)
    Shyguy.new(text).shy
  end

  def self.display_stripped(text)
    Shyguy.new(text).stripped
  end

  private

  def strip_hyphenation
    @stripped = @shy.gsub(SYMBOL, '')
  end

  def normalize
    ALTERNATIVES.each do |a|
      @shy = @original_text.gsub(a, SEPARATOR)
    end
    @shy = @original_text.gsub(SEPARATOR, SYMBOL)
  end
end
