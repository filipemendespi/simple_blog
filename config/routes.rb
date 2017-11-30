Rails.application.routes.draw do
  devise_for :users,
             skip: %I[sessions registrations],
             controllers: {
               passwords: 'passwords'
             }, path: 'user'

  as :user do
    get 'user/sign_up', to: 'registrations#new', as: :new_user_registration
    post 'user', to: 'registrations#create', as: :user_registration
    get 'user/sign_in', to: 'sessions#new', as: :new_user_session
    post 'user/sign_in', to: 'sessions#create', as: :user_session
    delete 'user/sign_out', to: 'sessions#destroy', as: :destroy_user_session
  end

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'sessions#new', as: :unauthenticated_root
    end
  end

  resources :questions, only: %I[new show create]
  resources :answers, only: %I[create]
end
