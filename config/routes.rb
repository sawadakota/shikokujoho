Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  namespace 'article' do
    resources :dates, only: [:index, :new, :create]
    resources :fashions, only: :index
    resources :events, only: :index
    resources :gourmets, only: :index
    resources :travels, only: :index
    resources :models, only: [:index, :show] do
      resources :likes, only: [:create, :destroy]
      collection do
        get 'search'
      end
    end
    resources :tags, only: [:index, :show]
  end

  namespace 'admin' do
    resources :models, only: [:new, :create, :edit, :update]
  end
  root "article/models#index"
end
