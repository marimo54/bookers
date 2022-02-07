Rails.application.routes.draw do
  post 'books' =>'lists#create'
  get 'books' =>'lists#index'  ,as:'index_list'
  get 'books/:id' => 'lists#show', as:'list'
  get 'books/:id/edit' => 'lists#edit', as:'edit_list'
  patch 'books/:id' => 'lists#update', as:'update_list'
  delete 'books/:id' => 'lists#destroy', as:'destroy_list'
  root to: 'lists#root'
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
