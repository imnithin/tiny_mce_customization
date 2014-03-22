class EditorCustomizationsController < ApplicationController

	def index
		@basic_data = %w{first_name last_name role}
		@addt_data = %w{location gender}
		@sexual_identities = %w{Male Female}
	end

	def create
		if params[:file].present?
			file = params[:file]
			File.open(Rails.root.join('app','assets', 'images', params[:file].original_filename), 'wb') do |f|
				f.write(file.read)
			end
		end
		image="/assets/#{params[:file].original_filename}"
		 render json: {
      image: {
        url: view_context.image_url(image)
      }
    }, content_type: "text/html"
  
	end


	def images
	end

	def show
	end


end
