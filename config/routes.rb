Rails.application.routes.draw do
	root 'sums#index'
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
end
