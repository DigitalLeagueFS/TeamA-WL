Rails.application.routes.draw do

  namespace :admin do
    root 'main#index'
    get 'main/index'

    resources :lists, except: :new do
      resources :wishes, except: :new
    end
  end

  scope :admin do
    devise_for :admins, controllers: { sessions: 'admin/admins/sessions'}
  end
  devise_for :users

  root 'pages#landing'

  resources :lists do
    resources :wishes
  end
end
