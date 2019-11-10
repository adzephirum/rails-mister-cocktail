Rails.application.routes.draw do
  root to: 'cocktails#home'
  resources :cocktails, only: [:index, :show, :edit, :update, :new, :create, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
