Rails.application.routes.draw do
  resources :teachers
  resources :part_completions
  resources :lesson_parts
  resources :lessons

  get 'users/:user_id/progress' => 'users#progress', :as => "user_progress"
  resources :users

  root 'part_completions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
