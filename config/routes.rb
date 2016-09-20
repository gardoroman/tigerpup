Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/lead_uploads/new' => 'lead_uploads#new'
  post '/lead_uploads' => 'lead_uploads#create'

end
