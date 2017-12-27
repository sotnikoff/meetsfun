Rails.application.routes.draw do

  get '/meetings/new', to: 'meetings#user_new', as: 'new_user_meeting'
  get '/meetings/:id', to: 'meetings#user_show', as: 'user_meeting'
  get '/meetings/:id/edit', to: 'meetings#user_edit', as: 'edit_user_meeting'
  put '/meetings/participate/:id', to: 'meetings#user_update_participate', as: 'update_user_meeting_participate'
  delete '/meetings/participate/:id', to: 'meetings#user_delete_participate', as: 'delete_user_meeting_participate'
  patch '/meetings/:id', to: 'meetings#user_update', as: 'update_user_meeting'
  delete '/meetings/:id', to: 'meetings#user_destroy', as: 'destroy_user_meeting'
  post '/meetings', to: 'meetings#user_create', as: 'create_user_meeting'
  post '/comments', to: 'meetings#create_comment', as: 'create_user_meeting_comment'
  get '/meetings', to: 'meetings#user_index', as: 'user_meetings'

  scope '/api' do
    get '/cities', to: 'cities#api_index', as: 'api_cities'
  end


  get '/search', to: 'pages#search', as: 'search'
  post '/search', to: 'pages#search', as: 'query_search'
  post '/main', to: 'pages#main', as: 'query_main_search'

  scope '/admin' do
    resources :meetings
    resources :interests
    resources :cities
    resources :comments
  end

  get 'admin', to: 'pages#admin'
  get 'main', to: 'pages#main', as: 'main'
  get 'profile', to: 'profiles#show', as: 'profile'
  get 'profile/edit', to: 'profiles#edit', as: 'edit_profile'

  patch 'profile', to: 'profiles#update', as: 'update_profile'


  root 'pages#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
