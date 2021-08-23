Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    resources :users, only: [:show, :edit, :update, :destroy]

    resources :games do
      resources :comments,  only: [:create, :destroy]
      resource  :favorites, only: [:create, :destroy]
        collection do
          match 'search' => 'games#search', via: [:get, :post]
        end
    end

  end

  namespace :admin do
    resources :users, only: [:index, :show, :destroy]
    resources :games
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
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'

  post 'contacts/back',    to: 'contacts#back',    as: 'back'
  get  'done',             to: 'contacts#done',    as: 'done'
end
