Rails.application.routes.draw do

  resources :schools
  resources :teachers
  resources :students
  resources :courses

  get  '/teachers/:id/student', to: 'teachers#show'

  root 'teachers#index'

end
