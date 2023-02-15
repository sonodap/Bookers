Rails.application.routes.draw do
  get 'new'     => 'books#new'
  get 'index'   => 'books#index'
  get 'books/:id/edit'    => 'books#edit',as: 'edit'
  get 'books/:id'    => 'books#show',as: 'show' 
  get  'top'    => 'homes#top'
  post 'books' => 'books#create'
  delete 'books/:id' => 'books#destroy',as: 'destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
