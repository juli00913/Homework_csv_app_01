require 'csv'

class FiltersController < ApplicationController

	def index
	end
	
	def filtering
	file = params[:file]
	file_path = file.path
	
	sum = 0;
	CSV.foreach(file_path) do |row|
		if(row[2].to_i % 2 == 1)
		sum += row[1].to_f
		end 

	 	render plain: '%.2f' % result
		end 
	end
	
