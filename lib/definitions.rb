class Definitions

  @@definition_list = []

  define_method(:initialize) do |first_definition|
    @first_definition = first_definition

  end

  define_method(:first_definition) do
    @first_definition
  end

  define_singleton_method(:all) do
    @@definition_list
  end

  define_method(:save) do
    @@definition_list.push(self)
  end




end
