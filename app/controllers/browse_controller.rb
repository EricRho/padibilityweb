class BrowseController < ApplicationController
	#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	def browse_params
      browse_params.require(:browse).permit(:name)
	end
	def new
		@browse = Browse.new
	end
	def create
		@browse = Browse.new(browse_params)
	end
	private
    def owners
		@browse = Browse.new(browse_params)
		@survey.user_id=current_user.id
    	@browse.save
	end
	def seekers
		@browse = Browse.new(browse_params)
    	@browse.save
	end

	def idcheck
	end
end