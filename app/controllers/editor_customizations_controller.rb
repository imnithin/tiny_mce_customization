class EditorCustomizationsController < ApplicationController

	def index
		@basic_data = %w{first_name last_name role}
		@addt_data = %w{location gender}
		@sexual_identities = %w{Male Female}
	end

	def pdf
		
	end

	def images
	end
	
	def show
	end

	# def image_upload
	# 	if params[:upload].present?
	# 		file = params[:upload][:datafile]
	# 		File.open(Rails.root.join('assets', 'images', file.original_filename), 'wb') do |f|
	# 			f.write(file.read)
	# 		end
	# 	end
	# 	redirect_to :action => "index"
	# end
end
