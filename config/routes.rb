Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "users#show", as: :user_root
  end
  resources :users do
    resources :items do
  #  put :complete
  #  put :archive
  #  put :activate
    end
  end

  root to: "welcome#index"
end
