Rails.application.routes.draw do

	root to: "welcome#home"

  		# get '/' => 'welcome#home'

  	devise_for :users
  		resources :contacts, only:[:new, :create]

end
