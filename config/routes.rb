Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'

  get '/lead_uploads/new' => 'lead_uploads#new'
  post '/lead_uploads' => 'lead_uploads#create'

  post '/sessions' => 'sessions#create'
  get '/sessions/new'=> 'sessions#new', :as => 'new_session'
  get '/sessions' => 'sessions#new'
  delete '/sessions' => 'sessions#delete'


  resources :users

end
