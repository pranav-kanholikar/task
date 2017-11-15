Rails.application.routes.draw do
  

  resources :colleges

  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :students do
  resources :subjects
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "students#index"
end
