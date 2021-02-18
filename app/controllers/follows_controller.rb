class FollowsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]
  before_action :authenticate_user!

  def create
    current_user.follow(@user)
    flash[:notice] = "Parabéns você está seguindo " + @user.email 
    redirect_to :controller => "/home", :action => "index"
  end

  def destroy
    current_user.stop_following(@user)
    flash[:notice] = "Você deixou de seguir " + @user.email 
    redirect_to :controller => "/home", :action => "index"
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

end

