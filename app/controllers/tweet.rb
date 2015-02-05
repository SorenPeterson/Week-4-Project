# Display all tweets ever
# Display all tweets ever
get '/tweets' do
end

# Create a new tweet
get '/tweets/new' do
  erb :tweet_form
end

# Create a new tweet
post '/tweets' do

end

# Display a single tweet
get '/tweets/:id' do
end

# Form to edit a tweet
get '/tweets/:id/edit' do
end

# Modify a tweet
put '/tweets/:id' do
end

# Delete a tweet
delete '/tweets/:id' do
end