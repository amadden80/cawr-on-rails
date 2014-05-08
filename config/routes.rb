Rails.application.routes.draw do

  root 'users#index'

  resources :users do
    resources :caws, only: [:create, :destroy]
  end

end
