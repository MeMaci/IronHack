Rails.application.routes.draw do

  resources :users, only: [:create, :new] do
    resources :products, only: [:destroy, :index, :show, :create, :new, :edit, :update]
    	resources :bids, only: [:create, :new]
  end

end
