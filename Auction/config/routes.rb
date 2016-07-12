Rails.application.routes.draw do

  get 'auction/home'

	get '/' => 'auction#home'

  resources :users, only: [:create, :new, :show, :index] do
    resources :products
  end
  resources :products do
  	resources :bids, :controller => 'bid'
  end

end
