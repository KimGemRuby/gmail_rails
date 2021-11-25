Rails.application.routes.draw do

  devise_for :users
  root to: "email#index"
  resources :tasks, except: [:show]

  resources :emails do
    put "/unread", to: "emails#unread"
    put "/read", to: "emails#read"
  end
  #get 'registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
