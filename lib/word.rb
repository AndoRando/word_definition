class Word
  attr_reader(:word)

  define_method(:initialize) do |word|
    @word = word
  end
end
