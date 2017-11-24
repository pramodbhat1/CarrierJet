Rails.application.routes.draw do
  resources :adminrefs
  devise_for :admins
  resources :firstpages
  resources :chatboxdemos
  resources :chats
  resources :newloginpages
  resources :carriers do 
    collection do
      post 'append_message_method'
      # get 'append_message_method'
    end
  end
  resources :ratings
  get 'rooms/show'

  devise_for :users
  resources :suggestionboxes
  resources :latestnews
  resources :myjobs
  resources :backups
  resources :connects
  resources :nexts
  resources :carrierknowledghes
  resources :jobs
  resources :homepages
  resources :allhtmls
  resources :references
  resources :userrefernces
  resources :adminrrefernces
  get 'adminrefs/index'
  get 'userrefernces/index'
  get 'adminrrefernces/index'
  get 'references/index'
  root 'firstpages#index'	
  get 'homepages/index'

  get 'carrierknowledghes/index'
  get 'allhtmls/index'
  get  'backups/index'
  get 'myjobs/index'
  get 'firstpages/index'
 get 'suggestionboxes/index'
 get 'ratings/index'
 get 'carriers/index'
 get 'newloginpages/index'
 get 'chats/index'
 get 'chatboxdemos/index'
  get 'userrefernces/index'
  get 'adminrrefernces/index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
