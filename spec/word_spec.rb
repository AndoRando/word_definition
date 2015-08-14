require('rspec')
require('definition')
require('word')

describe('Word') do
  before() do
    Word.clear()
    @mountain_word = Word.new("mountain")
    @mountain_word.save()
    @star_word = Word.new("star")
    @star_word.save()
  end

  describe('#word') do
    it('returns the word') do
      expect(@mountain_word.word()).to(eq("mountain"))
    end
  end

  # describe('#definitions') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end
  #
  # describe('#add_definition') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end

  describe('.clear') do
    it('returns the word') do
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns the word') do
      expect(Word.all()).to(eq([@mountain_word, @star_word]))
    end
  end

  describe('#id') do
    it('returns a word id') do
      expect(@star_word.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('returns a word by its id number') do
      expect(Word.find(@mountain_word.id())).to(eq(@mountain_word))
    end
  end
end
