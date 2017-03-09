Rails.application.routes.draw do
  get 'doses/new'

  get 'cocktails/index'

  get 'cocktails/show'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
