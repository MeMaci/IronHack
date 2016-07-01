Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/become a host' =>'site#become a host'
  get '/help' => 'site#help'
  get '/signup' => 'site#signup'
  get '/login' => 'site#login'
end
