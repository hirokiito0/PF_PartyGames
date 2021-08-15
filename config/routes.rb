Rails.application.routes.draw do
  namespace :public do
    resources :users, only: [:show, :edit, :update, :destroy]
    resources :games do
      resources :comments,  only: [:create, :destroy]
      resource  :favorites, only: [:create, :destroy]
    end
    get 'homes/top'
  end
  namespace :admin do
    resources :users, only: [:index, :show, :destroy]
    resources :games
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
