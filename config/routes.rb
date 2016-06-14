Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount Monologue::Engine, at: 'articles/'

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
