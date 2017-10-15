
require 'csv'

class SumsController < ApplicationController
	def index
	end
	
	def create
	 file = params[:file]
	 file_path = file.path
	 
	 result = 0;
	 CSV.foreach(file_path) do |row|
		result += row[0].to_f
		end
		
	 respond_to do |format|
	 	format.html { render plain: '%.2f' % result}
		end 
	end
end
