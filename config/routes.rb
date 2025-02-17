Rails.application.routes.draw do
  devise_for :users
  resources :projects, only: [:show, :edit, :update, :destroy, :create, :new, :index] do
    resources :conversation_histories, only: [:index, :create]
  end

  delete 'users/:id', to: 'users#destroy', as: 'destroy_user'

  root "projects#index"
end
