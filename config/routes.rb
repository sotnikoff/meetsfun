Rails.application.routes.draw do

  get '/meetings/:id', to: 'meetings#user_show', as: 'user_meeting'
  get '/meetings/:id/edit', to: 'meetings#user_edit', as: 'edit_user_meeting'
  scope '/admin' do
    resources :meetings
    resources :interests
    resources :cities
  end

  get 'admin', to: 'pages#admin'
  get 'profile', to: 'pages#profile'
  root 'pages#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
