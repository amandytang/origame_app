Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  resources :creators
  resources :designs
  resources :designs do
    put :favourite, on: :member
  end
  get '/favourites' => 'designfavourites#index'

  resources :designs
    put '/designs/:id/favourite' => 'designs#favourite' as favourite_design
end
  resources :designs do
    put :rating, on: :member
  end
end
