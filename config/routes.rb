Rails.application.routes.draw do
  root 'todos#index', via: :get

  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: :create
  end

  resource :session, only: [:new, :create]
end
