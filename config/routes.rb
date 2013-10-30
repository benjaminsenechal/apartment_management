ApartmentManagement::Application.routes.draw do
 devise_for :users, {
    class_name: 'Users::Owner',
    controllers: { registrations: 'registrations' }
  }

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
