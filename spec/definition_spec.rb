require('rspec')
require('definition')
require('word')

describe('Definition') do
  before() do
    Definition.clear()
    @mountain_def_noun = Definition.new({:part_of_speech=> "noun", :meaning=> "a natural elevation of the earth's surface rising more or less abruptly to a summit, and attaining an altitude greater than that of a hill."})
    @mountain_def_noun.save()
    @mountain_def_adjective = Definition.new({:part_of_speech=> "adjective", :meaning=> "living, growing, or located in the mountains."})
    @mountain_def_adjective.save()
    @star_def_noun = Definition.new({:part_of_speech=> "noun", :meaning=> "any of the large, self-luminous, heavenly bodies, as the sun, Polaris, etc."})
    @star_def_noun.save()
    @star_def_verb = Definition.new({:part_of_speech=> "verb", :meaning=> "to feature as a star."})
    @star_def_verb.save()
  end

  describe('#part_of_speech') do
    it('returns the part of speech of the definition') do
      expect(@mountain_def_adjective.part_of_speech()).to(eq("adjective"))
    end
  end

  describe('#meaning') do
    it('returns the meaning of the definition') do
      expect(@mountain_def_noun.meaning()).to(eq("a natural elevation of the earth's surface rising more or less abruptly to a summit, and attaining an altitude greater than that of a hill."))
    end
  end

  describe('.clear') do
    it('clears all definitions') do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns all definitions') do
      expect(Definition.all()).to(eq([@mountain_def_noun, @mountain_def_adjective, @star_def_noun, @star_def_verb]))
    end
  end

  describe('#id') do
    it('returns a definition id') do
      expect(@star_def_noun.id()).to(eq(3))
    end
  end

  describe('.find') do
    it('returns a definition by its id number') do
      expect(Definition.find(@star_def_verb.id())).to(eq(@star_def_verb))
    end
  end
end
