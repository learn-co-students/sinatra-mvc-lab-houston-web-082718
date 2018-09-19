class PigLatinizer

    attr_accessor :string

    def piglatinize(string)
        string_array = split_string(string)
        pig_latin = string_array.map do |word|
            single_word(word)
        end
        pig_latin.join(' ') 
    end

    def single_word (word)
        first_vowel_index = 0
        split_word = word.split('')
        split_word.find do |letter|
            if letter.downcase == 'a' || letter.downcase == 'e' || letter.downcase == 'i' || letter.downcase == 'o' || letter.downcase == 'u'
                first_vowel_index = split_word.index(word[letter])
            end
        end
        if (split_word.first.downcase == 'a' || split_word.first.downcase == 'e' || split_word.first.downcase == 'i' || split_word.first.downcase == 'o' || split_word.first.downcase == 'u')
            split_word.push("w",'a','y')     
        else
            front_end = split_word.slice!(0,first_vowel_index)
            front_end.each do |letter|
                split_word.push(letter)
            end
            split_word.push("a","y")
        end
        split_word.join
    end

    def split_string(string)
        new_string = string.gsub /\W+/, ' '
        new_string.split(' ')
    end

end