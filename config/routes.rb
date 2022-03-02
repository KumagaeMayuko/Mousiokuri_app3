Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'events#index'
  get '/events', to: 'events#index'
  get '/events/new', to: 'events#new' 
  post '/events/create', to: 'events#create', as: 'event_create'
  get '/events/:id/pre_destroy', to:'events#pre_destroy'
  delete '/events/:id', to:'events#destroy', as: 'event_delete'

  resources :infos
  get '/infos/new', to: 'infos#new', as:'info_new'
  post '/infos/create', to: 'infos#create', as: 'info_create'
  delete '/infos/:id', to:'infos#destroy', as:'info_delete'

  get '/infos/:id/edit', to:'infos#edit', as:'info_edit'
  patch '/infos/:id', to:'infos#update',as:'info_update'

  get '/note', to: 'tabs#note'
  resources :tabs

end
