Rails.application.routes.draw do

  devise_for :admins
  devise_for :models

  namespace :api do
    namespace :v1 do
      resources :fruits, only: [:index, :create, :destory, :update]
    end
  end

  # resource :user, only: [:new, :create]
  # resource :session, only: %i[new create destroy]

  resources :posts do
    resources :comments
  end

  get "/interests/" => "interests#index"
  get "/interests/:interest" => "interests#show"

  get "/pages/:page" => "pages#show"

  get "/projects" => "projects#index"

  get "/projects/:project" => "projects#show"

  root 'pages#show', page: "home"

  resources :nintendo_characters, only: [:index, :show, :update]

  # resources :static only: [:home, :about, :projects, :interests]

end
