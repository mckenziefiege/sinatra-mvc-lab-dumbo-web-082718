class PigLatinizer
  attr_accessor :phrase

  def initialize
    @phrase = phrase
  end

  def pig_word(word)
    vowels = ["a", "e", "i" , "o" , "u"]
    if vowels.include?(word[0].downcase)
      return "#{word}way"
    else
      word_array = word.split("")
      letter_index = word_array.find_index do |letter|
        vowels.include?(letter)
      end
      "#{word.slice(letter_index,word.length-1)}#{word.slice(0, letter_index)}ay"
    end
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    words.map do |word|
      pig_word(word)
    end.join(" ")
  end
end
