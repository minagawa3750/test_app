class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:title, :start_day, :finish_day, :free_check, :memo))
    if @user.save
    flash[:notice] = "スケジュールを新規登録しました"
    redirect_to :users
    else
    render "new"
    flash[:notice] = "スケジュールを登録できませんでした"
    end
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
     if @user.update(params.require(:user).permit(:title, :start_day, :free_check, :finish_day, :memo))
       flash[:notice] = "スケジュールを更新しました"
       redirect_to :users
     else
       render "edit"
       flash[:notice] = "スケジュールを更新できませんでした"
     end
  end
 
  def destroy
    @user = User.find(params[:id])
     @user.destroy
     flash[:notice] = "スケジュールを削除しました"
     redirect_to :users
  end
end
