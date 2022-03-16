Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/contacts/:id" => "contacts#show"
  get "/contacts" => "contacts#index"
  post "/contacts" => "contacts#new"
  delete "/contacts/:id" => "contacts#destroy"
  get "/contacts/:id/nearest" => "contacts#nearest"
end
