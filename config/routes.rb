Rails.application.routes.draw do
  namespace :public do
    resources :games
    resources :users, only: [:index, :show, :edit]
    get 'homes/top'
  end
  namespace :admin do
    resources :games
    resources :users, only: [:index, :show]
    get 'homes/top'
  end
  
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
}

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
}

  root "homes#top"
 
end
