Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/first-contact" => "contacts#first_person"
  get "/all-contacts" => "contacts#all_people"
end
