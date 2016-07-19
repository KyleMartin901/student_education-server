Rails.application.routes.draw do
  resources :part_completions
  resources :lesson_parts
  resources :lessons
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
