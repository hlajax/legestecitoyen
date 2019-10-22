Rails.application.routes.draw do
  resources :sondages
  resources :corruptions
  resources :corruption_cats
  resources :petitions
  resources :petition_cats
  resources :actualites
  resources :categories
  devise_for :administrateurs
  root 'accueil#index'
  devise_for :citoyens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
