Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/edit'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
