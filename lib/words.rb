class Words

  @@word_list = []

  define_method(:initialize) do |word|
    @word = word
    @id = @@word_list.length() + 1
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@word_list
  end

  define_method(:save) do
    @@word_list.push(self)
  end

  define_singleton_method(:clear) do
    @@word_list = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    @@word_list.each do |unique_word|
      if unique_word.id() == id
      return unique_word
      end
    end
    return nil
  end
end
