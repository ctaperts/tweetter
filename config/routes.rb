Rails.application.routes.draw do

  get 'profiles/:id' => 'profiles#show', as: :profile

  get 'profiles' => 'profiles#index'


  root 'twits#index'

  resources :relationships
  resources :twits

  get 'twits/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
