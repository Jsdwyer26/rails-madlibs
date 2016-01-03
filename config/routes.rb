Rails.application.routes.draw do

  root "madlibs#index"
  resources :madlibs

=begin
  Prefix Verb   URI Pattern                 Controller#Action
    madlibs GET    /madlibs(.:format)          madlibs#index
            POST   /madlibs(.:format)          madlibs#create
 new_madlib GET    /madlibs/new(.:format)      madlibs#new
edit_madlib GET    /madlibs/:id/edit(.:format) madlibs#edit
     madlib GET    /madlibs/:id(.:format)      madlibs#show
            PATCH  /madlibs/:id(.:format)      madlibs#update
            PUT    /madlibs/:id(.:format)      madlibs#update
            DELETE /madlibs/:id(.:format)      madlibs#destroy
=end
   
end
