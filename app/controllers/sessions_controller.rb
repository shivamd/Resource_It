class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
      sign_in user #needs to be implemented
      redirect_to user
		else
			flash.now[:error] = "Invalid Email/Password combination"
			render :new
		end
	end

	def destroy
	end
end
