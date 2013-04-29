class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		unless @user.save
			render :new
		else
			redirect_to @user, notice: "Successfully Created An Account" #need to build user show action & page
		end
	end
end
