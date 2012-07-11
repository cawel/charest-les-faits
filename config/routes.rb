CharestLaHonte::Application.routes.draw do

  resources :examples,
    :path => "exemples",
    :path_names => { :new => 'nouveau', :edit => 'modifier' } 

  devise_for :admins, :path_prefix => "admin"

  match 'admin' => 'admin::examples#index'
  namespace :admin do
    resources :examples
    resources :reasons
  end

  match 'a-propos' => 'application#about', :as => 'about'
  match 'se-debarrasser-de-la-honte' => 'application#good_riddance', :as => 'good_riddance'
  match 'en-arriere' => 'application#previous', :as => 'previous'
  match 'en-avant' => 'application#next', :as => 'next'

  root :to => 'application#index'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
