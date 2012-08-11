CharestLaHonte::Application.routes.draw do

  match 'exemples/confirmation' => 'examples#create_confirm', :as => :create_confirm
  match 'exemples/top-10-les-plus-partages' => 'examples#top', :as => :top

  resources :posts, :only => [:show]

  resources :examples, :only => [:new, :create, :show],
    :path => "exemples",
    :path_names => { :new => 'nouveau' } 

  devise_for :admins, :path_prefix => "admin"

  match 'admin' => 'admin::examples#index'
  namespace :admin do
    match 'shares/index' => 'shares#index', :as => :shares
    match 'shares/trigger_fetch' => 'shares#trigger_fetch', :as => :trigger_fetch
    resources :examples
    resources :reasons
    resources :posts, :except => :show
  end

  match 'a-propos' => 'application#about', :as => 'about'
  match 'remplacer-les-liberaux' => 'application#good_riddance', :as => 'good_riddance'
  match 'en-avant' => 'application#next', :as => 'next'
  match 'raisons' => 'application#reasons', :as => 'reasons'
  match 'categorie/:id' => 'application#by_reason', :as => 'by_reason'
  match 'toutes-les-categories' => 'application#clear_by_reason', :as => 'clear_by_reason'
  match '/feed' => 'examples#feed', :as => :feed, :defaults => { :format => 'atom' }

  root :to => 'application#index'

  match '*path' => 'application#not_found'
  match '/not_found' => 'application#not_found', :as => 'not_found'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
