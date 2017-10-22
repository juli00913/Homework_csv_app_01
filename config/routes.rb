Rails.application.routes.draw do
	
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	
	get 'filters' => 'filters#index'
	post 'filters' => 'filters#filtering'

	get 'intervals' => 'intervals#index'
	post 'intervals' => 'intervals#finding_sum'

	root 'sums#index'
	root 'fitlers#index'
	root 'intervals#index'

end
