Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'frontend/main#index'
  scope module: :frontend do
      get 'product', to: 'main#product'
  end
end
