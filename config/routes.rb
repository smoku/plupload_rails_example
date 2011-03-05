PluploadExample::Application.routes.draw do
  root :to => 'photos#index'
  
  resources :photos, :only => [:index, :create]
end
