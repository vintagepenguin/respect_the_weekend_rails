RespectTheWeekend::Application.routes.draw do

  root :to => 'events#index'
  
  resources :events
  resources :tags

end 