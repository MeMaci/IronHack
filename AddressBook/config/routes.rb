Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts' => 'contacts#create'
end
