Rails.application.routes.draw do
	
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	
	get 'filters' => 'filters#index'
	post 'filters' => 'filters#filtering'

	root 'sums#index'
	root 'fitlers#index'

end
