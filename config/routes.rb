Rails.application.routes.draw do
  get '/users/:id' => 'users#show'
  get '/albums' => 'albums#index'
  get '/album/:id' => 'albums#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
