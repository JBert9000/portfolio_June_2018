Rails.application.routes.draw do

  root 'pages#show', page: "home"

  resources :posts

  get "/pages/:page" => "pages#show"


  # resources :static only: [:home, :about, :projects, :interests]

end
