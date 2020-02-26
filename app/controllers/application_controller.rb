class ApplicationController < ActionController::API
    #gem install jwt (in terminal)
    #receive a user and return a token
    #encode is used to build those string in JWT
  def issue_token(user)
    JWT.encode({user_id: user.id}, 'secret_key', 'HS256')
  end

  def current_user
    @user ||= User.find_by(id: user_id)
  end

  def token
    request.headers['Authorization']
  end

  # encryption algorithm
  def decoded_token
    begin
      JWT.decode(token, 'secret_key', true, { :algorithm => 'HS256' })
    rescue JWT::DecodeError
      [{error: "Invalid Token"}]
    end
  end

  # ???
  def user_id
    decoded_token.first['user_id']
  end

  # double band change the current_user value to boolean 
  def logged_in?
    !!current_user
  end
#for redux
#   def encode_token(payload)
#     JWT.encode(payload, 'secret_key')
#   end

end
