Rails.application.routes.draw do
  get '/index' => 'application#index'
  get '/new' => 'application#new'
  get '/create_idea' => 'application#create'
  get '/idea/:id' => 'application#show'
  get '/idea/:id/edit' => 'application#edit'
  get '/update_idea/:id' => 'application#update'
  get '/idea/:id/destroy' => 'ideas#destroy'

end
