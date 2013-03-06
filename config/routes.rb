Mymoviesearch::Application.routes.draw do

  #match "/:search" => 'welcome#search', as: "search"
  
  root :to => 'welcome#index'

end
