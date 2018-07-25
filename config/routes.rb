Rails.application.routes.draw do

    root 'categories#index'

  resources :categories do
    resources :subcategories
  end

  resources :listings do
    resources :comments 
    collection do
     get 'search'
    end
    
  end

  devise_for :users 

  match '/help',    to: 'pages#help',     via: :get
  match '/scams',   to: 'pages#scams',    via: :get
  match '/contact', to: 'pages#contact',  via: :get
  match '/safety',  to: 'pages#safety',   via: :get
  match '/terms',   to: 'pages#terms',    via: :get
  match '/privacy', to: 'pages#privacy',  via: :get
  match '/about',   to: 'pages#about',    via: :get
  match '/mylistings',   to: 'listings#mylistings',    via: :get
end
