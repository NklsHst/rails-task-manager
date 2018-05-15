Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # VERB PATH, to: 'CONTROLLER#ACTION'
  #route to show all tasks
  get "tasks", to: 'tasks#index', as: :tasks
  #create a task
  get '/tasks/new', to: 'tasks#new', as: :task_new
  post '/tasks', to: 'tasks#create'
  #route to show one task
  get "tasks/:id", to: 'tasks#show', as: :task
  #routes to update tasks
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'
  #route to delete task
  delete '/tasks/:id', to: 'tasks#destroy', as: :task_destroy
end
