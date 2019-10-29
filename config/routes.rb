Rails.application.routes.draw do
  resources :magazines
  resources :sondages do
	    member do
    put "like", to: "sondages#upvote"
    put "dislike", to: "sondages#downvote"
  end
  end
  resources :corruptions
  resources :corruption_cats
  resources :petitions do
	    member do
    put "like", to: "petitions#upvote"
  end
  end
  resources :petition_cats
  resources :actualites do
	    member do
    put "like", to: "actualites#upvote"
    put "dislike", to: "actualites#downvote"
  end
  end
  resources :categories
  devise_for :administrateurs
  root 'accueil#index'
  devise_for :citoyens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
