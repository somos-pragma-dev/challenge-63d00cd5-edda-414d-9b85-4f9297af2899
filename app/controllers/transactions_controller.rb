Rails.application.routes.draw do
  resources :transactions, only: [:index, :create, :show, :update, :destroy]
end