Rails.application.routes.draw do

  resources :microposts, :only => [:create, :destroy]

  get 'home/index'
  get 'home/followers'
  get 'home/following'
  get 'site/index'
  get 'search_user/index'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  match  'users/:user_id/follows/:id' => "follows#destroy", :via => :all
 
	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".
  resources :users do 
      resources :follows, :only => [:create, :destroy], :via => :all
  end

	# You can have the root of your site routed with "root"
	authenticated :user do
    root to: "home#index", as: "home"
  end

  root to: 'site#index'

end