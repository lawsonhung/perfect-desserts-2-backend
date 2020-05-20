class UsersController < ApplicationController
  # kev: buffaloboy
  # annie: ruby

  def profile
    token = request.headers["Authorization"].split(" ")[1]
    decoded_token = JWT.decode(token, "badbreathbuffalo", true, { algorithm: "HS256" })
    user_id = decoded_token[0]["user_id"]
    current_user = User.find(user_id)

    render json: current_user
  end

  # POST signup new user
  def create
    debugger
  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
