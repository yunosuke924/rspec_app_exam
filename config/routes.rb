Rails.application.routes.draw do
  resources :tasks
  resources :projects
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
