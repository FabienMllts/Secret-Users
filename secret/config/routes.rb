Rails.application.routes.draw do

	resources :users
	root to: 'static_pages#home'


	get 'static_pages/secret_page', to:'static_pages#secret_page'

	get    '/signup',  to: 'users#new'
	post   '/signup',   to: 'users#create'
	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
	post   '/users/:id/edit(.:format)',   to: 'users#edit'
	get    '/users/:id/user/destroy(.:format)', to: 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
