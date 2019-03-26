require 'pry'
class Anagram
attr_accessor :word

def initialize(word)
  @word = word
end

def match(words_in_array)
  words_in_array.select do |array|
  @word.split("").sort == array.split("").sort
  binding.pry
    end
  end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))
