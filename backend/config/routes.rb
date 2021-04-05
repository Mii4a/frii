Rails.application.routes.draw do
  namespace :api, { format: 'json' } do

    devise_for :users

  end
end
