Rails.application.routes.draw do
  resources :documents

  root to: 'documents#index'

  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'register'
             }
end
