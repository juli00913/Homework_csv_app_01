require 'csv'
class IntervalsController < ApplicationController
	def index
	end
	def finding_sum
		file = params[:file]
		file_path = file.path

		sum = 0
		index = 0
		biggest_sum = 0
		size_of_col = 0
		first_position = 0
		last_position = 29

		CSV.foreach(file_path) do |row|
			size_of_col += 1
		end
			while(last_position < size_of_col)
			
				CSV.foreach(file_path) do |row|
				if(index < first_position)
					index += 1
					next
				end
				sum += row[0].to_f
				if index == last_position
					if sum > biggest_sum
						biggest_sum = sum
					end
					first_position += 1
					index = 0
					last_position += 1
					sum = 0
     				break
   				end   				
   				index += 1
   			end   			
		end
		render plain: '%.2f' % biggest_sum
	end
end
