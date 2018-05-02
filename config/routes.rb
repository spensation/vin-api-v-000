Rails.application.routes.draw do
  resources :appellations
  resources :wines
  resources :varietals
  resources :producers
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
