Rails.application.routes.draw do
  resources :grades
  resources :assignments do
    get 'assignments', on: :member
  end
  resources :enrollments
  resources :courses do
    get 'students', to: 'courses#students', on: :member
  end
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
