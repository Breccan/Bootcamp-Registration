ActionController::Routing::Routes.draw do |map|
  map.resources :registrations
  map.root :controller => :registrations, :action => :new
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
