Rails.application.routes.draw do
  resources :details do
    collection { post :import }
  end

  root to: 'items#index'
  resources :items, only: [:index, :show, :create]
end
