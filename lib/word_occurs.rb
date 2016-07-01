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

class String
  define_method(:string_process) do
    raw_input = self.downcase
    index = 0
    new_output = ""
    raw_input.each_char do |chr|
      if chr =~ /[a-z ]/
        new_output.concat(chr)
      end
      index += 1
    end
    new_output
  end
end
