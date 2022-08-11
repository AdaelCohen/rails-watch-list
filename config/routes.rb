Rails.application.routes.draw do
  # index,show,create(new,create),
# get 'lists', to: 'lists#index'
resources :lists
end
