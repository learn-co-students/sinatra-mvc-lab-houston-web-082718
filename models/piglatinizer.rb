# Build a PigLatinizer model (in your models directory) that converts a string into pig latin.
require 'pry'
class PigLatinizer


    def piglatinize(user_phrase)
        user_phrase.split(" ").collect do |word|
            if !word[0].scan(/[aeiouAEIOU]/).empty?
                word + "way"
            else
                first_vowel_index = word.index(word.scan(/[aeiou]/)[0])
                word[first_vowel_index..word.length-1] + word[0..first_vowel_index-1] + "ay"
            end
        end.join(" ")
    end

end