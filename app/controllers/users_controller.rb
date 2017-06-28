class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
#    @follower = Relationship.find(params[:id]).follower
#    @follower.save
#    @followed = Relationship.find(params[:id]).followed
#    @followed.save
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "ユーザーを削除しました！"
  end
  
end