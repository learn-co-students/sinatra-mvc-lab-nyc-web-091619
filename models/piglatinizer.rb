class PigLatinizer
    
    # attr_accessor :text

    # def initialize
    #     @text = text
    # end

    
    def latinize_string(string)
        arr = string.split('')

        if arr[0].scan(/[aeiou]/).count == 1 || arr[0].scan(/[AEIOU]/).count == 1 
            arr << "way"
        else
            i = 0
            initial_blend = ""
            while initial_blend.size <= 3 && arr[i].scan(/[aeiou]/).count != 1do
                initial_blend += arr[i]
                arr.shift
            end
            arr << "#{initial_blend}ay"
        end
        arr.join
    end
    
    def piglatinize(sentence)
        arr = sentence.split(" ")
        
        if arr.count == 1
            piglatin = latinize_string(arr[0])
        else
            latinized = arr.map {|word| latinize_string(word)}
            latinized.join(" ")
        end
        
    end
    # binding.pry
end