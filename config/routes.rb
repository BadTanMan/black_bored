Rails.application.routes.draw do
  get 'tester/index1'

  get 'tester/index2'

  get 'tester/index3'

  get 'tester/index4'

  get 'tester/index5'

  get 'tester/index6'

  get 'tester/index7'

  resources :contents
  devise_for :users

  resources :articles
  mount ActionCable.server => '/cable'

  root 'articles#index'
end
