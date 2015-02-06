def create
  @user = User.new(email: params[:email])
  @user.password = (params[:password])
  @user.save!
end

def login
  @user = User.find_by_email(params[:email])
  if @user == nil
    redirect '/'
  elsif @user.password == params[:password]
    session[:user_id] = @user.id
  else
    redirect '/'
  end
end

def logout
  session.clear
end

def forgot_password
  @user = User.find_by_email(params[:email])
  random_password = Array.new(10).map { (65 + rand(58)).chr }.join
  @user.password = random_password
  @user.save!
  Mailer.create_and_deliver_password_change(@user, random_password)
end

def user_logged_in?
  session[:user_id] != nil
end

def current_user_email
  User.find(session[:user_id]).email
end

def current_user
  User.find(session[:user_id])
end
