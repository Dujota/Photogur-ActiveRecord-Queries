Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  get 'pictures/old' => 'pictures#old'
  get 'pictures/year' => 'pictures#year'
  resources :pictures


  #
  # get 'pictures' => 'pictures#index'
  #
  # # ADD NEW PICTURE ROUTE !!!!! NEED POST AND A GET
  # post 'pictures' => 'pictures#create'
  # get 'pictures/new' => 'pictures#new'
  #
  # # DYNAMIC LINKS
  # get 'pictures/:id' => 'pictures#show'
  #
  # # EDITING ROUTE FOR pictures
  # get 'pictures/:id/edit' => "pictures#edit"
  # patch 'pictures/:id' => "pictures#update"
  #
  # # DELETE
  # delete 'pictures/:id' => 'pictures#destroy'

end
