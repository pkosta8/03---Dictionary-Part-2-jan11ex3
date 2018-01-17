# Rails.application.routes.draw do
#    For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#
# resources :entries
#
# Prefix Verb   URI Pattern                 Controller#Action
#    entries GET    /entries(.:format)          entries#index
#            POST   /entries(.:format)          entries#create
#  new_entry GET    /entries/new(.:format)      entries#new
# edit_entry GET    /entries/:id/edit(.:format) entries#edit
#     entry GET    /entries/:id(.:format)      entries#show
#            PATCH  /entries/:id(.:format)      entries#update
#            PUT    /entries/:id(.:format)      entries#update
#            DELETE /entries/:id(.:format)      entries#destroy
#
#
#
# end
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :entries
end
