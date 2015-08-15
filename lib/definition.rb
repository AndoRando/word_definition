class Definition
  attr_reader(:part_of_speech, :meaning, :id)
  @@Definitions = []

  define_method(:initialize) do |attr|
    @part_of_speech = attr.fetch(:part_of_speech)
    @meaning = attr.fetch(:meaning)
    @id = @@Definitions.length() + 1
  end

  define_singleton_method(:all) do
    @@Definitions
  end

  define_singleton_method(:clear) do
    @@Definitions = []
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@Definitions.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end

  define_method(:save) do
    @@Definitions.push(self)
  end
end
