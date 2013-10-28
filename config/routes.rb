ApartmentManagement::Application.routes.draw do
 devise_for :owner, :controllers => { :registrations => "registrations" }
 devise_for :tenant, :controllers => { :registrations => "registrations" }

end
