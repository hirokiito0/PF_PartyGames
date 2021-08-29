Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    resources :users, only: %i[show edit update destroy]

    resources :games do
      resources :comments,  only: %i[create destroy]
      resource  :favorites, only: %i[create destroy]
      collection do
        match 'search' => 'games#search', via: %i[get post]
      end
    end
  end

  namespace :admin do
    resources :users, only: %i[index show]
  end

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  root 'homes#top'
  resources :contacts, only: %i[new create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'

  post 'contacts/back',    to: 'contacts#back',    as: 'back'
  get  'done',             to: 'contacts#done',    as: 'done'
end
