Rails.application.routes.draw do
  
 get '/' => 'url#home'
 post '/urls' => 'url#create'

end
