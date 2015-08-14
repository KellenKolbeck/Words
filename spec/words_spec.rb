require('rspec')
require('words')
require('definitions')

describe(Words) do
  before() do
    Words.clear()
  end
  describe('#word') do
    it('displays the word') do
      test_word = Words.new("mountain")
      expect(test_word.word()).to(eq("mountain"))
    end
  end

  describe('.all') do
    it('returns all of the words') do
      expect(Words.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the words') do
      test_word = Words.new("mountain")
      expect(test_word.save()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the words out of the array after each spec run') do
      test_word = Words.new("mountain")
      test_word.save()
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a word based on an id') do
      test_word_1 = Words.new("mountain")
      test_word_1.save()
      test_word_2 = Words.new("hill")
      test_word_2.save()
      expect(Words.find(test_word_2.id())).to(eq(test_word_2))
    end
  end
end

  describe('#save_definition') do
    it('saves the definition for a word') do
      test_word = Words.new("mountain")
      new_definition = Definitions.new('A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.')
      test_word.save_definition(new_definition)
      expect(test_word.show_word()).to(eq([test_word]))
    end
  end
