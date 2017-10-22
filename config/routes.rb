Rails.application.routes.draw do
	
	get 'sums' => 'sums#index'
	post 'sums' => 'sums#create'
	
	get 'filters' => 'filters#index'
	post 'filters' => 'filters#filtering'

	get 'intervals' => 'intervals#index'
	post 'intervals' => 'intervals#finding_sum'

	get 'lin_regressions' => 'lin_regressions#index'
	post 'lin_regressions' => 'lin_regressions#linear'
	
	
	root 'sums#index'
	root 'fitlers#index'
	root 'intervals#index'
	root 'lin_regressions#index'
	end
