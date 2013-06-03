class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
    @snippets = @tag.snippets.where(user_id: current_user.id)
  end


  def index 
    redirect_to root_path unless current_user
  end
end
