Rails.application.routes.draw do
  resources :posts

  resources :static only: [:home, :about, :projects, :interests]

end
