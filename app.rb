require('sinatra')
require('sinatra/reloader')
require('./lib/words')
require('./lib/definitions')
also_reload('lib/**/*.rb')

get('/') do
  @list_of_words = Words.all()
  erb(:index)
end

get('/new_word') do
  @words = Words.all()
end

post('/new_word') do
  new_word= Words.new(params.fetch('new_word'))
  new_word.save()
  @words = Words.all()
  @list_of_words = Words.all()
  erb(:index)
end

get('/new_word/:id') do
  @new_word= Words.find(params.fetch('id'))
  erb(:index)
end

post('/definitions') do
  first_definition = params.fetch('first_definition')
  @first_definition = Definitions.new(first_definition)
  @first_definition.save()
  @word = Words.find(params.fetch('new_word_id'))
  @word.save_definition(@first_definition)
  erb(:definitions)

end
