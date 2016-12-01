Rails.application.routes.draw do
  get 'high_schools/index', to: 'high_schools#index'
  get 'high_schools/import', to: 'high_schools#import'

  get 'rosters/index', to: 'rosters#index'
  get 'rosters/import', to: 'rosters#import'

  get 'students/import', to: 'students#import'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students do
  #   collection { post :import }
  # end

  root 'students#index'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
