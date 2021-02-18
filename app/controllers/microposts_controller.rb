class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:destroy]
  before_action :authenticate_user!

  def create
    @micropost = Micropost.new(micropost_params)
    if @micropost.save
       flash[:notice] = "Parabéns, micropost criado com sucesso" 
    else   
       flash[:alert] = "O micropost deve estar preenchido"
    end 
    redirect_to :controller => "/home", :action => "index"
  end

  def destroy
    @micropost.destroy
    flash[:notice] = "Você acabou de deltar seu Micropost" 
    redirect_to :controller => "/home", :action => "index"
  end

  private
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

    def micropost_params
      params.require(:micropost).permit(:content, :user_id)
    end
end
