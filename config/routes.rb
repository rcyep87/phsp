Rails.application.routes.draw do

  resources :schools
  resources :teachers
  resources :students
  resources :courses

  root 'homepage#index'

end
