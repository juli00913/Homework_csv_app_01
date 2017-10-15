Rails.application.routes.draw do
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	root 'sums#index'
	
	get 'files' => 'filters#index'
	post 'files' => 'filters#filtering'
	root 'files#index'
end
