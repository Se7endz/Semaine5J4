Rails.application.routes.draw do
  get '/profil', to: 'sessions#create'
  resources :sessions, only: [:new, :create, :destroy]
  get 'users/new'
  get 'users/show'
  resources :users
	root to: 'static_pages#home'
	resources :gossips
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get 'welcome/:id', to: 'static_pages#landing', as: 'accueil'
  get '/:gossips', to:'static_pages#show_gossips', as: 'show_gossips'
  get '/user/:authors', to:'static_pages#show_authors', as: 'show_authors'
  get '/user/:authors/city', to:'static_pages#show_city', as: 'show_city'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
