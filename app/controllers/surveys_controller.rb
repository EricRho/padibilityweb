class SurveysController < ApplicationController
	def new
		@survey = Survey.new
	end

	def create
	end

	 

    def owner
    	@survey = Survey.new(survey_params)
    	@survey.user_id=current_user.id
        @survey.save
    end
    def seeker
    	@survey = Survey.new
        #@survey.user_id=current_user.id
    	@survey.save
    end

private

    #def survey_params
     # params.require(:survey).permit(:first_name, :last_name, :email, :looking_for, :moving_to, :location, :gender, :coed, :age, :roommate_type, :housing_type, :roommates_estimate, :roommates_amount, :roommates_group, :roommates_names, :rent, :move_in, :move_out, :bedrooms, :bathrooms, :list_rooms, :amenities, :apartment_pet, :roommate_pet, :hometown, :school, :company, :terms, :avatar, :wake_up, :bedtime, :smoke, :smoke_often, :drink, :drink_often, :interest, :sex_privacy, :overnight, :overnight_often, :realty, :availability, :address, :age_min, :age_max, :age_mode, :pad_photo, :user_status, :sociability, :tidiness, :question, :noise, :political, :roommate_political, :religion, :roommate_religion)
    #end

    #def survey_params
    #	params.require(:survey).permit(:first_name, :last_name, :email, :looking_for, :moving_to, :location, :gender, :coed, :age, :roommate_type, :housing_type, :roommates_estimate, :roommates_amount, :roommates_group, :roommates_names, :rent, :move_in, :move_out, :bedrooms, :bathrooms, :list_rooms, :amenities, :apartment_pet, :roommate_pet, :hometown, :school, :company, :terms, :avatar, :wake_up, :bedtime, :smoke, :smoke_often, :drink, :drink_often, :interest, :sex_privacy, :overnight, :overnight_often, :realty, :availability, :address, :age_min, :age_max, :age_mode, :pad_photo, :user_status, :sociability, :tidiness, :question, :noise, :political, :roommate_political, :religion, :roommate_religion)
    #end

    def idcheck
     
    end

end