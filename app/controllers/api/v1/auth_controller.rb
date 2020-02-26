class Api::V1::AuthController < ApplicationController

# Login
  def create
    # byebug
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      # issue that user a token\
      token = issue_token(user)
      render json: {user: user, jwt: token}, status: :accepted
      #instead of adding one attribute, the code above give all the attribute from user. 
    else
      render json: {error: 'That user could not be found', status: 401
  }
    end
  end

  def show
    user = User.find_by(id: user_id)
    if logged_in?
      puts "You're logged in"
    #   render json: { id: user.id, username: user.username }
    render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
    else
      render json: {error: 'No user could be found'}, status: 401
    end
  end



end
