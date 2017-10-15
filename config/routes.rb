Rails.application.routes.draw do
	
	post 'sums' => 'sums#create'
	
	post 'files' => 'filters#filtering'
end
