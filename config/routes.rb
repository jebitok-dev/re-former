Rails.application.routes.draw do
  get 'user/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'user#index'
end
