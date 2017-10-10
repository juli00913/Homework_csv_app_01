Rails.application.routes.draw do
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	root 'sums#index'
end
