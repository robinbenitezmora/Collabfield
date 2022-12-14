Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  # Defines the root path route ("/")
  # root "articles#index"
  # Edit login route with devise
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  # Edit logout route with devise
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
