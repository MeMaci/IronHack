Rails.application.routes.draw do

  get '/' => 'site#home'
  #USE "as" TO ADD HELPER IF YOU USE RESOURCES HELPERS ASSIGNED BY RAILS
  # get '/posts' => 'posts#index'
  # get '/posts/new' => 'posts#new'
  # post '/posts' => 'posts#create'
  post '/posts/:id/upvote' => 'posts#upvote', as: 'post_upvote'
  post '/posts/:id/downvote' => 'posts#downvote', as: 'post_downvote'
  # delete '/posts/:id' => 'posts#destroy'
  # patch '/posts/:id' => 'posts#update'
  # put '/posts/:id' => 'posts#update'

  resources :posts, only: [:index, :new, :create, :show, :destroy, :update] do
    end
end
