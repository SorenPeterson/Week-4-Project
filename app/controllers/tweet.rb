# Display all tweets ever
get '/tweets' do
  @tweets = Tweet.all
  erb :'tweets/tweet_list'
end

# Create a new tweet
get '/tweets/new' do
  erb :'tweets/new_tweet_form'
end

# Create a new tweet
post '/tweets' do
  tweet = Tweet.create(content: params[:content], user_id: session[:user_id], retweet_id: params[:retweet_id]) if user_logged_in?
  redirect "/tweets/#{tweet.id}"
end

# Display a single tweet
get '/tweets/:id' do
  @tweet = Tweet.find(params[:id])
  erb :'tweets/tweet_view'
end

# Form to edit a tweet
get '/tweets/:id/edit' do
  @tweet = Tweet.find(params[:id])
  erb :'tweets/edit_tweet_form'
end

# Modify a tweet
put '/tweets/:id' do
  tweet = Tweet.find(params[:id])
  tweet.update_attributes(content: params[:content])
end

# Delete a tweet
delete '/tweets/:id' do
  Tweet.destroy(params[:id])
end
