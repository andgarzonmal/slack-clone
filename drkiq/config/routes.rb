Rails.application.routes.draw do
  devise_for :users 

  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
