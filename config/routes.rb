Rails.application.routes.draw do
  root "articles#index"
  
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Is possible to define all the verbs
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  # Or use the keyword resources
  resources :articles do
    resources :comments
  end
end
