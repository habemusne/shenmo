Rails.application.routes.draw do
  devise_for :users
  root to: 'application#angular'
  resources :courses
  # get 'about' => 'static_pages#about'
end
