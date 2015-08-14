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
end
