Rails.application.routes.draw do
  get 'greeting', to: 'greeting#index'
  # get '/patients/:id'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'root#index'
end
