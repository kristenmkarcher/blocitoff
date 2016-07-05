Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  authenticated :user do
    root "users#show", as: :user_root
    resources :users, only: [:show] do
    resources :items, only: [:create]  do
    put :complete
    put :archive
    put :activate
    end
  end
end

  root to: "welcome#index"
end
