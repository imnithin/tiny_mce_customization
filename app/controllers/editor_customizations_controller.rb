class EditorCustomizationsController < ApplicationController

	def index
		@basic_data = %w{first_name last_name role}
		@addt_data = %w{location gender}
		@sexual_identities = %w{Male Female}
	end

	def pdf
		
	end
end
