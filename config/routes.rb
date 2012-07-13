CharestLaHonte::Application.routes.draw do

  match 'exemples/confirmation' => 'examples#create_confirm', :as => :create_confirm
  resources :examples, :only => [:new, :create, :show],
    :path => "exemples",
    :path_names => { :new => 'nouveau' } 

  devise_for :admins, :path_prefix => "admin"

  match 'admin' => 'admin::examples#index'
  namespace :admin do
    resources :examples
    resources :reasons
  end

  match 'a-propos' => 'application#about', :as => 'about'
  match 'se-debarrasser-de-la-honte' => 'application#good_riddance', :as => 'good_riddance'
  match 'en-avant' => 'application#next', :as => 'next'
  match 'raisons' => 'application#reasons', :as => 'reasons'
  match 'filtrer-par-raison/:id' => 'application#by_reason', :as => 'by_reason'
  match 'voir-toutes-les-raisons' => 'application#clear_by_reason', :as => 'clear_by_reason'

  root :to => 'application#index'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
