class SnippetsController < ApplicationController

  def create

    user = User.find_by_remember_token(params[:token])
    redirect_to root_url unless signed_in?
    snippet = user.snippets.build(content: params[:content]) if user

    if snippet.save
      snippet.create_tags(params[:tags])
    end
  end


  def index
    redirect_to root_path unless current_user
  end
end
