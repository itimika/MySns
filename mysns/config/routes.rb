Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root to: 'posts#index'
  resources :posts

  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get 'users', to: 'users#index'
  get ":name", to: 'users#show'
  get ':name/edit', to: 'users#edit'
  patch ':id', to: 'users#update'
  put ':id', to: 'users#update'
  delete 'users/:id', to: 'users#delete'

  post 'followers/:id', to: 'followers#create'
  delete 'followers/:id', to: 'followers#destroy'

end
