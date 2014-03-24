class EditorCustomizationsController < ApplicationController

	def index
		@basic_data = %w{first_name last_name role}
		@addt_data = %w{location gender}
		@sexual_identities = %w{Male Female}
	end

	def create
		if params[:file].present?
			file = params[:file]
			save_image(file)
			image="/assets/#{file.original_filename}"
			render json: {
				image: {
					url: view_context.image_url(image)
				}
				}, content_type: "text/html"
			else
				redirect_to :action=>"index"
			end
		end

		def upload_image
			if params[:file].present?
				file = params[:file][:datafile]
				save_image(file)
			end
			redirect_to :action=>"images"
		end

		def show
		end
		
		def delete_image

		end

		private

		def save_image(file)
			File.open(Rails.root.join('app','assets', 'images', file.original_filename), 'wb') do |f|
				f.write(file.read)
			end
		end


	end
