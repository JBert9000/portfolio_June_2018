Rails.application.routes.draw do

  root 'pages#show', page: "home"

  resources :posts

  get "/pages/:page" => "pages#show"

  get "/projects" => "projects#index"

  get "/projects/:project" => "projects#show"



  # resources :static only: [:home, :about, :projects, :interests]

end
