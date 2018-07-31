Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  get 'articles/post1' => 'articles#post1'
  get 'articles/post2' => 'articles#post2'
  get 'articles/post3' => 'articles#post3'
  get 'articles/post4' => 'articles#post4'

  resources :articles
end
