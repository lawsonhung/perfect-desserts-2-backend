class ApplicationController < ActionController::API

  def token
    request.headers["Authorization"].split(" ")[1]
  end

  # Local secret, sort of like server password. Used to sign JWT tokens
  # Hiding at 1:23:00, React Auth pt 2
  def secret
    # EDITOR='code --wait' rails credentials:edit
    # Rails.application.credentials.jwt_secret
    # Use environmental variables for Heroku
    ENV['jwt_secret']
  end

  # Decodes a token
  def decoded_token
    JWT.decode(token, secret, true, { algorithm: "HS256" })
  end

  def user_id
    decoded_token[0]["user_id"]
  end

  def current_user
    User.find(user_id)
  end

  # Creates a token
  def create_token(user_id)
    payload = { user_id: user_id }
    token = JWT.encode(payload, secret, 'HS256')
  end

  # token = request.headers["Authorization"].split(" ")[1]
  # decoded_token = JWT.decode(token, "badbreathbuffalo", true, { algorithm: "HS256" })
  # user_id = decoded_token[0]["user_id"]
  # current_user = User.find(user_id)
  # payload = { user_id: user.id }
  # # JWT.encode(payload, secret, hash algorithm)
  # token = JWT.encode(payload, 'badbreathbuffalo', 'HS256')
end
