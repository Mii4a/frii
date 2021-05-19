Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    namespace :v1 do

      root 'user#index'
      
      mount_devise_token_auth_for 'User', at: :auth, controllers: {omniauth_callbacks: 'omniauth_callbacks'}
      resources :users
      resources :tags

    end
  end
end
