Rails.application.routes.draw do
  get "language_lookup" => "language_lookups#show", as: :language_lookups_results

  get "language_lookup/new" => "language_lookups#new", as: :language_lookups_form

  post "language_lookup/create" => "language_lookups#create", as: :language_lookup
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "rails/health#show"
end
