Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  resources :experience

  resources :blog do
    collection do
      match 'search' => 'blog#search', :via => [:get, :post], :as => :search
    end
  end
  root 'top#index', as: 'top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
