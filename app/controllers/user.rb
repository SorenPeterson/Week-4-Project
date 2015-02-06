# Sign In
post '/signin' do
  login
  redirect '/'
end

# Logout
get '/logout' do
  logout
  redirect '/'
end

# Display a list of all users
get '/users' do
  @users = User.all
end

# Sign up page
get '/users/new' do
  erb :user_sign_up
end

# Create a new user
post '/users' do
  create
  login
  redirect '/'
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