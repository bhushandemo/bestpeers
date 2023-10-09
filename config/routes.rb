Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
  resources :teachers

  root to: "homes#index"

  scope :admin do
    resources :artists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
