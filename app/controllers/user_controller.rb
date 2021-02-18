class UserController < ApplicationController

  before_action :set_user
  before_action :same_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def show
    @posts = @user.all #tweets.paginate(page: params[:page]).order('created_at DESC')
    respond_with(@posts)
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to root_path
    end
  end

  def destroy
  end

  private
  def user_params
#    params.require(:user).permit(:email, :password)
    params.require(:user).permit(:name, :username, :password, :birth,
                                 :bio, :site, :photo)
  end

  def same_user
    if @user != current_user
      redirect_to root_path
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

end
