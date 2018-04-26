Rails.application.routes.draw do


  resources :users
  get 'contact', to: 'static_pages#contact'

  get 'about', to: 'static_pages#about', as: 'about'

  get 'me/about', to: 'static_pages#me_about', as: 'ouam'

  get 'group/about', to: 'static_pages#group_about', as: 'team'

  root 'static_pages#home'
  #
  # match 'me/about' => 'static_pages#me_about', :as => :Ouam
  # match 'group/about' => 'static_pages#group_about', :as => :Team
  #

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
