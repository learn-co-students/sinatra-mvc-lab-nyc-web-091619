class PigLatinizer

  VOWELS = %w(a e i o u A E I O U)

  def vowel?(word)
    word.split("").any? do |letter|
      VOWELS.include?(letter)
    end
  end

  def piglatinize_word(word)
    # vowel case
    if vowel?(word[0])
      word += 'w'
    # too many consanants
    elsif !vowel?(word[0..2])
      word = word.slice(3..-1) + word.slice(0..2)
    # 2 consonants
    elsif !vowel?(word[0..1])
      word = word.slice(2..-1) + word.slice(0..1)
    # 1 consonant
    else !vowel?(word[0])
      word = word.slice(1..-1) + word.slice(0)
    end
    word << 'ay'
  end

  def splits(phrase)
    phrase.split.map do |word|
      piglatinize_word(word)
    end.join(" ")
  end

  def piglatinize(phrase)
    phrase.split.count > 1 ? splits(phrase) : piglatinize_word(phrase)
  end
end # End of class