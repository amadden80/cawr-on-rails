Rails.application.routes.draw do

  root 'welcome#index'

  resources :users do
    resources :caws, only: [:create, :destroy]
  end

end
