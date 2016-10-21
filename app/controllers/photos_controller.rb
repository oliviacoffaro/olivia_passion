#index
get '/photos' do
  url = 'https://api.unsplash.com/photos/random/'

  response = RestClient.get(url, headers={'Authorization' => "Client-ID 1d9c855ffd9a36bb868dcbd114091b2335cf0d05d8a26348d82e70c9031a6be4"})
  @image = JSON.parse(response.body)["urls"]["regular"]
  @quote = Quote.order("RANDOM()").first
  erb :'/photos/index'
end


get '/photos/:id' do

end
