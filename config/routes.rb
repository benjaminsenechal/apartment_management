ApartmentManagement::Application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  mount RailsAdmin::Engine => '/admin', as: :rails_admin

  resources :documents

  root to: 'high_voltage/pages#show', id: 'home'
end
