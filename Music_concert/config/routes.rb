Rails.application.routes.draw do
	get '/' => 'concerts#home'  

  resources :concerts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:new, :create, :destroy]
  end
end
