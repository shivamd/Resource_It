class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		unless @user.save
			render :new
		else
			redirect_to @user, notice: "Successfully Created An Account"
		end
	end

	def show
		@user = User.find(params[:id])
	end
end
