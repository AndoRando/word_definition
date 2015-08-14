class Word
  attr_reader(:word, :id, :definitions)
  @@Words = []

  define_method(:initialize) do |word|
    @word = word
    @id = @@Words.length() + 1
    @definitions = []
  end

  define_singleton_method(:all) do
    @@Words
  end

  define_singleton_method(:clear) do
    @@Words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@Words.each() do |word|
      if word.id().eql?(id.to_i())
        found_word = word
      end
    end
    found_word
  end

  define_method(:save) do
    @@Words.push(self)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end
