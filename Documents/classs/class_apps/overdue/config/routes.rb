Rails.application.routes.draw do
  resources :books
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'books#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
