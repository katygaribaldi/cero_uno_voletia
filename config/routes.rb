Rails.application.routes.draw do
  resources :users
  get 'pages/forbidden'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	

	get '/events', 			to: 'events#index', as: :events
	post '/events', 		to: 'events#create' #no se le pone el as: porque toma el mismo de arriba que es events
	get '/events/new', 		to: 'events#new', 	as: :new_event
	get '/events/:id', 		to: 'events#show', 	as: :event
	get '/events/:id/edit',	to: 'events#edit', 	as: :edit_event
	patch '/events/:id', 	to: 'events#update',as: :update_event
	delete '/events/:id',	to: 'events#delete'

	#localhost:3000/events
	#events_path
	#localhost:3000/events/10




	root 'events#index'

end
