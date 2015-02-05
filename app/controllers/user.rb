# Display a list of all users
get '/users' do
end

# Sign up page
get '/users/new' do
end

# Create a new user
post '/users' do
end

# Display a users page with all of their tweets
get '/users/:id' do
  erb :user_content
end

# Edit users preferences/settings
get '/users/:id/edit' do
end

# Modify the users preferences
put '/users/:id' do
end

# Delete a user
delete '/users/:id' do
end