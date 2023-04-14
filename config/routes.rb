Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/post_file', to: 'test#post_file'
  get '/ping', to: 'test#ping'
end
