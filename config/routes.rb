Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root of site
  root 'welcome#index'

  #test page
  get 'welcome/test' => 'welcome#test'

  #blog homepage
  get 'blog/index' => 'blog#index'
end
