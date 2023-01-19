Rails.application.routes.draw do
  root  'users#index',as:'users_index'


  get '/microposts'=>'microposts#index',as:'microposts_index'
  get '/microposts/new'=>'microposts#new',as:'microposts_new'
  get 'microposts/:id/edit'=>'microposts#edit',as:'microposts_edit'
  post 'microposts/create'=>'microposts#create',as:'microposts_create'
  patch 'microposts/:id/edit'=>'microposts#update',as:'microposts_update'
  delete 'microposts/:id/edit'=>'microposts#destroy',as:'microposts_destroy'
  get 'microposts/:id'=>'microposts#show',as:'microposts_show'

  get 'users/new'=>'users#new',as:'users_new'
  post'users/create'=>'users#create',as:'users_create'
  get 'users/:id/edit'=>'users#edit',as:'users_edit'
  patch 'users/:id/edit'=>'users#update',as:'users_update'
  delete 'users/:id/edit'=> 'users#destroy',as:'users_destroy'
  get 'users/:id'=> 'users#show',as:'users_show' 
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
