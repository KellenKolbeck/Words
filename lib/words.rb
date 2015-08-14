class Words

  @@word_list = []


  define_method(:initialize) do |word|
    @word = word
    @word_array = []
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

  define_method(:save_definition) do |definition|
    @word_array.push(definition)
  end

  define_method(:show_word) do |new_word|
    @word_array.push(word)
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
