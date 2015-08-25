Rails.application.routes.draw do


	Rails.application.routes.draw do
		devise_for :users, controllers: {
												 sessions:      'users/sessions',
												 confirmations: 'users/confirmations',
												 passwords:     'users/passwords',
												 registrations: 'users/registrations',
												 unlocks:       'users/unlocks'
										 }
	end

	devise_scope :user do
		root to: 'users/sessions#new'
	end

	resources :users, only: [:index] do
		resources :articles

	end
end
