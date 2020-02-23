class UsersController < ApplicationController

    def index 
        users = User.all
        render :json => users
    end 

    def show 
        user =User.find_by(username: params[:id])
        render :json => user 
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            token = encode_token{user_id: @user.id}
        render json: {id: @user.id, username: @user.username, emial: @user.emial, password: @user.password, isTeacher: @user.isTeacher, jwt: token}
    end 

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render :json => user 
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
