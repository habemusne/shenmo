Rails.application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :users do
    resources :children
  end

  resources :courses
  resources :enrollments, only: [:create, :destroy]
  resources :articles
  root 'static_pages#index'
  get 'shenmo_about' => 'static_pages#shenmo_about'
  get 'dashboard' => 'static_pages#dashboard'
  get 'manage' => 'static_pages#manage'
end
