Rails.application.routes.draw do
  
 get '/' => 'url#home'
 get '/urls/:id' => 'url#show'
 post '/urls' => 'url#create'
 get '/:shortlink' => 'url#index'

end
