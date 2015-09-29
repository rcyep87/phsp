Rails.application.routes.draw do

  resources :schools
  resources :teachers
  resources :students
  resources :courses

  get  '/homepage/about', to: 'homepage#show'

  root 'homepage#index'

end
