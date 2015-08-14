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
  erb(:new_word)
end

post('/new_word') do
  new_word = Words.new(params.fetch('new_word'))
  new_word.save()
  @words = Words.all()
  @list_of_words = Words.all()
  erb(:index)
end
