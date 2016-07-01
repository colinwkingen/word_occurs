class String
  define_method(:word_occurs) do |key_word|
    word_occurance = 0
    word_array = self.split(" ")
    word_array.each do |word|
      if word == key_word
        word_occurance += 1
      end
    end
    word_occurance
  end
end
