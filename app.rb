require('sinatra')
require('sinatra/reloader')
require('./lib/word_occurs')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end
get('/result') do
  @sentence = params.fetch('sentence')
  @target_word = params.fetch('target_word')
  @formatted_sentence = @sentence.string_process()
  @result = @formatted_sentence.word_occurs(@target_word)
  erb(:result)
end
