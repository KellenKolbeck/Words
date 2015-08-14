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
    @@dealership
  end
end
