require('rspec')
require('definition')
require('word')

describe('Word') do
  before() do
    @mountain_word = Word.new("mountain")
    @star_word = Word.new("star")
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
  #
  # describe('.clear') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end
  #
  # describe('.all') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end
  #
  # describe('#id') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end
  #
  # describe('.find') do
  #   it('returns the word') do
  #     expect().to(eq())
  #   end
  # end
end
