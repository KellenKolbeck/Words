require('rspec')
require('words')
# require('definitions')

describe(Words) do
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
end
