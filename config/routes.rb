Rails.application.routes.draw do
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:index, :show, :new, :create, :edit, :update] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
