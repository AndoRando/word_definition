class Definition
  attr_reader(:part_of_speech, :meaning, :id)

  define_method(:initialize) do |attr|
    @part_of_speech = attr.fetch(:part_of_speech)
    @meaning = attr.fetch(:meaning)
  end
end
