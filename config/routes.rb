Rails.application.routes.draw do
  # get 'redirect_uri/oidc_get'
  # get 'redirect_uri/oidc_post'
  # get 'redirect_uri/oidc_put'
  # get 'redirect_uri/oidc_delete'

  get    '/redirect_uri/', to: 'redirect_uri#oidc_get'
  post   '/redirect_uri/', to: 'redirect_uri#oidc_post'
  put    '/redirect_uri/', to: 'redirect_uri#oidc_put'
  delete '/redirect_uri/', to: 'redirect_uri#oidc_delete'

  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
