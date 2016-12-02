Rails.application.routes.draw do
  get 'rosters_students_throughs/index', to: 'rosters_students_throughs#index'
  get 'rosters_students_throughs/import', to: 'rosters_students_throughs#import'

  get 'high_schools/index', to: 'high_schools#index'
  get 'high_schools/import', to: 'high_schools#import'

  get 'rosters/index', to: 'rosters#index'
  get 'rosters/import', to: 'rosters#import'

  get 'students/import', to: 'students#import'
  get 'students/index', to: 'students#index'

  get 'static_pages/home', to: 'static_pages#home'
  get 'static_pages/listing', to: 'static_pages#listing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students do
  #   collection { post :import }
  # end

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
