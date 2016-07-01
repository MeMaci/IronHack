Rails.application.routes.draw do

  get '/' => 'site#home'
  post '/contacts' => 'contacts#create'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
end
