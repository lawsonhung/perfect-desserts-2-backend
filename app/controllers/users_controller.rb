class UsersController < ApplicationController
  # kev: buffaloboy
  # annie: ruby
  # annie2: ruby

  # Gets user's profile
  def profile
    # Moving to ApplicationController for refactoring
    # token = request.headers["Authorization"].split(" ")[1]
    # decoded_token = JWT.decode(token, "badbreathbuffalo", true, { algorithm: "HS256" })
    # user_id = decoded_token[0]["user_id"]
    # current_user = User.find(user_id)

    render json: current_user
  end

  # POST /signup new user
  def create
    user = User.create(user_params)

    if user.valid?
      # Moving to ApplicationController for refactoring
      # payload = { user_id: user.id }
      # # JWT.encode(payload, secret, hash algorithm)
      # token = JWT.encode(payload, 'badbreathbuffalo', 'HS256')

      render json: {token: create_token(user.id)}
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
