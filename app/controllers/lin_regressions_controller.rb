require 'csv'
require 'linefit'

class LinRegressionsController < ApplicationController
	def index
	end
	
	def linear
 		file = params[:file]
		file_path = file.path
	 	linefit = LineFit.new
		index = 0
		x = []
		y = []
	  
		CSV.foreach(file_path) do |row|
			x << index
			y << row[0].to_f
			index += 1
		end
		
		linefit.setData(x,y)
		intercept = lineFit.coefficients
		slope = lineFit.coefficients	
	
	  	render plain: "%.6f,%.6f"% [slope, intercept] 
	end

end
