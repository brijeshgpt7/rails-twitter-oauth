class SessionsController < ApplicationController

  def new
    redirect_to '/auth/twitter'
    # redirect_to '/auth/khan_academy'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    user.save!
    reset_session
    session[:user_id] = user.id
    session[:access_token] = user.access_token
    session[:access_token_secret] = user.access_token_secret
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
