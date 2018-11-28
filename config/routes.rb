Rails.application.routes.draw do
  resources :usuarios
  resources :fas do
	resources :ratings
  end
  resources :ratings
  resources :interpretations
  resources :musicas
  resources :bandas do
    resources :musicas #Dan
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
