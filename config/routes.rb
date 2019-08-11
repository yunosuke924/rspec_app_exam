Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
