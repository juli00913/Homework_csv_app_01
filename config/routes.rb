Rails.application.routes.draw do
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	
	get 'files' => 'filters#index'
	post 'files' => 'filters#filtering'
end
