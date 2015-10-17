Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users do
    resources :bikes do
      resources :assets
    end
  end
  
end
