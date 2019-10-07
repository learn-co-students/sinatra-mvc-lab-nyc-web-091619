class PigLatinizer

    def piglatinize(input)
        vowels = ['a', 'e', 'i', 'o', 'u', 'y']
        two_cons_blends = ['st', 'sh', 'fl', 'fr', 'pl', 'th', 'ch', 'pr', 'wh', 'sk']
        three_cons_blends = ['spr', 'str']

        words = input.split
        #lowercase_words = words.map {|word| word.downcase }  

        latinized_words = words.map do |word|

            if vowels.any?(word[0].downcase) # if vowel, at way to end
                (word + "way")

            elsif word.length > 2 && three_cons_blends.any?("#{word[0]}#{word[1]}#{word[2]}".downcase)
                #if consonant blend, add those two letters to end
                "#{word[3, word.length - 1]}#{word[0]}#{word[1]}#{word[2]}ay"

            elsif word.length > 1 && two_cons_blends.any?("#{word[0]}#{word[1]}".downcase)
                #if consonant blend, add those two letters to end
                "#{word[2, word.length - 1]}#{word[0]}#{word[1]}ay"
            
            else 
                "#{word[1, word.length - 1]}#{word[0]}ay"
            end
        end

        #latinized_words[0] = latinized_words[0].capitalize
        latinized_words.join(' ')

    end

    def splits
    end



end