Rails.application.routes.draw do
  get 'sessions/new'

  resources :usuarios
  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
  resources :fas
  resources :ratings
  resources :interpretations
  resources :musicas
  resources :bandas
  root 'sessions#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
