Rails.application.routes.draw do
 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'frontend/main#index'

  namespace :backend do
    get '/', to: 'main#index'
    resources :products
  end

  scope module: :frontend do
    get 'product', to: 'main#product'
  end
end
