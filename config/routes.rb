Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #building a new route to list the tasks
  get '/tasks', to: 'tasks#index'

  get '/tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks',     to: 'tasks#create', as: :create_task

  get '/tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: "tasks#edit", as: :edit_task
  patch "tasks/:id",    to: "tasks#update", as: :update_task

  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task



end


# Rails.application.routes.draw do
#   get    "restaurants",          to: "restaurants#index"

#   get    "restaurants/new",      to: "restaurants#new"
#   post   "restaurants",          to: "restaurants#create"

#   # NB: The `show` route needs to be *after* `new` route.
#   get    "restaurants/:id",      to: "restaurants#show"

#   get    "restaurants/:id/edit", to: "restaurants#edit"
#   patch  "restaurants/:id",      to: "restaurants#update"

#   delete "restaurants/:id",      to: "restaurants#destroy"
# end
