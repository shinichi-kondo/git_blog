Rails.application.routes.draw do
  devise_for :users, :controllers => {
 :registrations => 'users/registrations',
 :sessions => 'users/sessions'
}
    resources :articles
    root "articles#index"
    
    post   '/like/:article_id' => 'likes#like',   as: 'like'
    delete '/like/:article_id' => 'likes#unlike', as: 'unlike'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

