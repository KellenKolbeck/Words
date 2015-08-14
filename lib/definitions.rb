class Definitions

  @@definition_list = []

  define_method(:initialize) do |first_definition|
    @first_definition = first_definition
    @id = @@definition_list.length() + 1
    # @second_definition = second_definition

  end

  define_method(:first_definition) do
    @first_definition
  end
  #
  # define_method(:second_definition) do
  #   @second_definition
  # end

  define_singleton_method(:all) do
    @@definition_list
  end

  define_method(:save) do
    @@definition_list.push(self)
  end

  define_singleton_method(:clear) do
    @@definition_list = []
  end

  define_method(:id) do
    @id
  end




end
