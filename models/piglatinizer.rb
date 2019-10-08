class PigLatinizer
    attr_accessor :words

    def initialize(words)
        @words = words
    end

    def to_piglatin
        return_string = ""
        text_array = words.split
        text_array.each do |word|
            if word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) == []
                return_string += word + "way "
            else
                end_string = ""
                end_word = ""
                counter = 0
                word.each_char.with_index do |char, i|
                    if char.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) == []
                        return_string += word[counter..word.length] + end_word + "ay "
                        break
                    else
                        end_word += char
                        counter += 1
                    end
                end
            end
        end
        return return_string[0...-1]
    end

end #END OF PIGLAT CLASS