Rails.application.routes.draw do


  resources :app_settings

  devise_for :users, controllers: { registrations: 'user_registrations/registrations'}
  
  resources :template_ones

  resources :posts do
    resources :comments
  end

  root to: 'template_ones#show'
  get 'edit_about', to: 'template_ones#edit_about'
  get 'edit_services', to: 'template_ones#edit_services'
  get 'edit_process', to: 'template_ones#edit_process' 
end
