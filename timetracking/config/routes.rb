
Rails.application.routes.draw do

  get '/' => 'site#home'
  get '/contact' => 'site#contact'

  resources :projects, only: [:index, :show, :new, :create] do
    resources :time_entries, only: [:destroy, :index, :new, :create, :edit, :update]
  end

  #REMEMBER we have 7 routes time_entries missing only one so instead of using ONLY better we use EXCEPT
    # resources :time_entries, except: [:show]


  # instead we add EDIT on TOP get '/projects/:project_id/time_entries/3/edit' => 'time_entries#edit'
  # resources actually gives you all and more of the routes routed below..
  # you want to see it go to Terminal adn RAKE ROUTES
  # get '/projects' => 'projects#index'
  # get '/projects/new' =>'projects#new'
  # post'/projects' => 'projects#create'
  # get '/projects/:id' => 'projects#show'
  # get '/projects/:project_id/time_entries' => 'time_entries#index'
  # get '/projects/:project_id/time_entries/new' => 'time_entries#new'

end
