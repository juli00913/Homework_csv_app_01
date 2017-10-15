require 'csv'

class FiltersController < ApplicationController
	
	def index
	end
	
	def filtering
	file = params[:file]
	file_path = file.path
	
	sum = 0;
	CSV.foreach(file_path) do |row|
		if row[2].to_i.odd?
			sum += row[1].to_f
		end
	end 

 	render plain: '%.2f' % sum
	end
end
