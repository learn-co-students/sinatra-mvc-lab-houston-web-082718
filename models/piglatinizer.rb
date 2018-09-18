class PigLatinizer
  attr_reader :text

  # def initialize
  #   @text = text
  # end

  # If the first character is a vowel, then take that whole word
  # and add ‘way’ at the end.
  # Otherwise comes the tricky part, take the consonant(s) before the first vowel
  # and move it to the end and add ‘ay’.

  def piglatinize(text)
    words = text.split(" ")
    regex = /[aeiou]/i
    new_words = words.map do |word|
      if word[0].match(regex)
        pig_lat = word + 'way'
      else
        first_vowel = word.match(regex)[0]
        first_vowel_index = word.index(first_vowel)
        first_consonants = word[0...first_vowel_index]
        pig_lat = word[first_vowel_index..-1]+first_consonants+'ay'
      end
    end
    new_words.join(" ")
  end
end