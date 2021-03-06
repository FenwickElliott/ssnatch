Rails.application.routes.draw do

  devise_for :users
  get 'snatch/about'
  get 'snatch/options'
  get 'snatch/link'
  # get 'snatch/fail'
  get 'snatch/snatch'

  # get 'user' => 'snatch#about'
  # put 'user' => 'snatch#update'

  put 'snatch/options' => 'snatch#update'

  get 'snatch' => 'snatch#snatch'
  get 'options' => 'snatch#options'
  get 'link' => 'snatch#link'
  # get 'fail' => 'snatch#fail'
  # get 'user/root' => 'snatch#link'

  get '/auth/:provider/callback', to: 'snatch#link'
  get '/auth/failure' , to: 'snatch#fail'

  root 'snatch#about'
end
