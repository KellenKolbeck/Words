require('rspec')
require('words')

describe(Words) do
  describe('#word') do
    it('displays the word') do
      test_word = Words.new("mountain")
      expect(test_word.word()).to(eq("mountain"))
    end
  end
end
