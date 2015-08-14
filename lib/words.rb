class Words

  @@word_list = []

  define_method(:initialize) do |word|
    @word = word

  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@word_list
  end



end
