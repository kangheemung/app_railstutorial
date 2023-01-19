Rails.application.routes.draw do
  get 'mocroposts/index'=>'mocroposts#index'

  get 'mocroposts/new'=>'mocroposts#new'
  get 'mocroposts/1/edit'=>'mocroposts#edit'
  post 'mocroposts/update'=> 'mocroposts#update'
  get 'mocroposts/destroy'=> 'mocroposts#destroy'
  post 'mocroposts/create'=>'mocroposts#create'
  get 'mocroposts/1'=> 'mocroposts#show'


  root  'users#index',as:'users_index'
  get 'users/new'=>'users#new',as:'users_new'
  post'users/create'=>'users#create',as:'users_create'
  get 'users/:id/edit'=>'users#edit',as:'users_edit'
  patch 'users/:id/edit'=>'users#update',as:'users_update'
 delete 'users/destroy'=> 'users#destroy',as:'users_destroy'
 get 'users/:id'=> 'users#show',as:'users_show' 
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
