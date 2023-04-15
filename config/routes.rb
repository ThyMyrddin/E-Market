Rails.application.routes.draw do
  resources :articles do
    resources :favorites, only: [:create, :destroy]
  end
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resources :articles
  get 'favorites/index'
  root 'home#index' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
