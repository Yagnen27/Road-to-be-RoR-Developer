Rails.application.routes.draw do
  root 'home#index'

    # public pages routes
    get 'home' => 'pages#home'
    get 'about' => 'pages#about'
    get 'contact' => 'pages#contact'
end
