Rails.application.routes.draw do
  resources :students
  resources :courses
  resources :teachers
  resources :schools

  resources :schools do
    resources :teachers
  end

  resources :courses do
    resources :students
  end

  resources :teachers do
    resources :courses
  end

  resources :teachers do
    resources :students
  end

root 'teachers#index'

end
