Rails.application.routes.draw do
  # index list
  get 'tasks', to: 'tasks#index'
  # create new task
  get 'tasks/new', to: 'tasks#new'
  # task detail page
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # task create page
  post 'tasks', to: 'tasks#create'
  # show edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'tasks_edit'
  # update task
  patch 'tasks/:id', to: 'tasks#update'
  # delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
