Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
  #middleware for pages
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unprocessable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all 

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
