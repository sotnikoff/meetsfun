Rails.application.routes.draw do


  scope '/admin' do
    resources :meetings
    resources :interests
    resources :cities
  end

  get 'admin', to: 'pages#admin'
  root 'pages#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
