class AuthController < ApplicationController

  def login
    # find a user
    user = User.find_by(username: params[:username])
    # if user exists, see if they really are the user via a password
    is_authenticated = user.authenticate(params[:password])
    # if all is well, send back the user
    if is_authenticated
      render json: user
    else
      render json: 'Youre not real... sorry'
    end

  end

end
