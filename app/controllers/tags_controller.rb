class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id])
    @snippets = @tag.snippets.where(user_id: current_user.id)
	end
end
