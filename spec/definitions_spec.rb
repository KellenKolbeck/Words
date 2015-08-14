require('rspec')
require('definitions')

describe(Definitions) do
  describe('#first_definition') do
    it('returns the primary definition for a word') do
      test_definition = Definitions.new('A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.')
      expect(test_definition.first_definition()).to(eq('A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.'))
    end
  end

  # describe('#second_definition') do
  #   it('returns the secondary definition for a word') do
  #     test_definition_1 = Definitions.new('A mountain is generally steeper than a hill.')
  #     expect(test_definition_1.second_definition()).to(eq('A mountain is generally steeper than a hill.'))
  #   end
  # end

  describe('.all') do
    it('returns all definitions for words') do
      expect(Definitions.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves all definitions of words') do
      test_definition = Definitions.new('A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.')
      test_definition.save()
      expect(Definitions.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('clears the definitions out of the array') do
      test_definition = Definitions.new('A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.')
      test_definition.save()
      Definitions.clear()
      expect(Definitions.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a definition based on an id') do
      test_definition_1 = Definitions.new("A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak.")
      test_definition_1.save()
      test_definition_2 = Definitions.new("A hill is a bump of the earth.")
      test_definition_2.save()
      expect(Definitions.find(test_definition_2.id())).to(eq(test_definition_2))
    end
  end
end
