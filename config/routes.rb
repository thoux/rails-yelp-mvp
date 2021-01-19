Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurant, only: [:index, :new, :create, :show] do
    resources :review, only: [:new, :create]
  end
end
