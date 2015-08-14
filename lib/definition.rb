class Definition
  attr_reader(:part_of_speech, :meaning, :id)
  @@Definitions = []

  define_method(:initialize) do |attr|
    @part_of_speech = attr.fetch(:part_of_speech)
    @meaning = attr.fetch(:meaning)
  end

  define_singleton_method(:all) do
    @@Definitions
  end

  define_singleton_method(:clear) do
    @@Definitions = []
  end

  define_method(:save) do
    @@Definitions.push(self)
  end
end
