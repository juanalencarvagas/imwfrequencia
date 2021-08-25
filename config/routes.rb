Rails.application.routes.draw do
  resources :frequencia_eventos
  resources :eventos
  resources :tipo_eventos
  get 'home/index'
  resources :pessoas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
