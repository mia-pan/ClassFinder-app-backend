class UsersController < ApplicationController

    def index 
        users = User.all
        render :json => users
    end 

    def show 
        user =User.find_by(id: params[:id])
        puts user.isTeacher
        render :json => user 
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user)}, status: :created
          else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end 
    end 

    def update 
        # byebug
        user = User.find(params[:id])
        user.update(user_params)
        puts user
        render json: user 
    end 

    def destroy
        user = User.find(params[:id])
        user.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def user_params
        params.require(:user).permit(:username, :email, :password, :isTeacher)
    end 

end
