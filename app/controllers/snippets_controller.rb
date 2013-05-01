class SnippetsController < ApplicationController

	def create
		redirect_to root_url unless signed_in?
		snippet = current_user.snippets.build(content: params[:content])
		if snippet.save
			redirect_to current_user
		else
		end
	end
end
