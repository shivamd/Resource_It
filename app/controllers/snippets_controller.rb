class SnippetsController < ApplicationController

	def create
		user = User.find_by_remember_token(params[:token])
		redirect_to root_url unless signed_in?
		snippet = user.snippets.build(content: params[:content]) if user
		if snippet.save
			redirect_to user
		else
			redirect_to root_url, notice: "Error creating a snippet"
		end
	end
end
