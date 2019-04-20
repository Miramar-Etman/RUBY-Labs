Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'
  get 'welcome/index'
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end