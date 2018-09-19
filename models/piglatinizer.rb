require 'pry'

class PigLatinizer

    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def pig_latin
        word_array = self.string.split(" ")
        
        pig_array = word_array.map do |word|
            first_vowel = word.scan(/[aAeEiIoOuU]/).first
            first_vowel_index = word.index(first_vowel)
            
            if first_vowel_index == 0
                word << "way"
            else
                consonants = word[0,first_vowel_index]
                word[0, first_vowel_index+1] = first_vowel
                word << consonants
                word << "ay"
            end
        end

        pig_array.join(" ")
    end

end