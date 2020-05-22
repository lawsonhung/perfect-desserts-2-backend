class AuthController < ApplicationController

  # POST /login
  # Logs user in
  def login
    # find a user
    user = User.find_by(username: params[:username])
    # if user exists, see if they really are the user via a password 
    is_authenticated = user.authenticate(params[:password])
    # if all is well, send back the user
    if is_authenticated
      # Moving to ApplicationController for refactoring
      # payload = { user_id: user.id }
      # # JWT.encode(payload, secret, hash algorithm)
      # token = JWT.encode(payload, 'badbreathbuffalo', 'HS256')
      render json: {token: create_token(user.id)} # I want a token instead
    else
      render json: {errors: ['Wrong username or password, Youre not real... sorry']},status: 422
    end

  end



end
