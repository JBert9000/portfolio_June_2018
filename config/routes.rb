Rails.application.routes.draw do

  resource :user, only: [:new, :create]
  resource :session, only: %i[new create destroy]

  resources :posts

  get "/pages/:page" => "pages#show"

  get "/projects" => "projects#index"

  get "/projects/:project" => "projects#show"

  root 'pages#show', page: "home"

  # resources :static only: [:home, :about, :projects, :interests]

end
