class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  # Seguidores
  def followers
  end

  # Seguindo
  def following
  end
  
end
