class Word
  attr_reader(:word)
  @@Words = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_singleton_method(:all) do
    @@Words
  end

  define_singleton_method(:clear) do
    @@Words = []
  end

  define_method(:save) do
    @@Words.push(self)
  end
end
