require('rspec')
require('definition')

describe('Definition') do
  before() do
    @mountain_def_noun = Definition.new({:part_of_speech=> "noun", :meaning=> "a natural elevation of the earth's surface rising more or less abruptly to a summit, and attaining an altitude greater than that of a hill."})
    @mountain_def_adjective = Definition.new({:part_of_speech=> "adjective", :meaning=> "living, growing, or located in the mountains."})
    @star_def_noun = Definition.new({:part_of_speech=> "noun", :meaning=> "any of the large, self-luminous, heavenly bodies, as the sun, Polaris, etc."})
    @star_def_verb = Definition.new({:part_of_speech=> "verb", :meaning=> "to feature as a star."})
  end

  describe('#part_of_speech') do
    it('returns the part of speech of the definition') do
      expect(@mountain_def_noun.part_of_speech()).to(eq("noun"))
    end
  end

  describe('#meaning') do
    it('returns the meaning of the definition') do
      expect(@mountain_def_noun.meaning()).to(eq("a natural elevation of the earth's surface rising more or less abruptly to a summit, and attaining an altitude greater than that of a hill."))
    end
  end

  # describe('.clear') do
  #   it('starts out empty') do
  #
  #   end
  #   it('clears all definitions') do
  #
  #   end
  # end
  #
  # describe('.all') do
  #   it('returns all definitions') do
  #
  #   end
  # end
  #
  # describe('#save') do
  #   it('saves a definition') do
  #
  #   end
  # end
  #
  # describe('#id') do
  #   it('returns a definition id') do
  #
  #   end
  # end
  #
  # describe('.find') do
  #   it('returns a definition by its id number') do
  #
  #   end
  # end
end
