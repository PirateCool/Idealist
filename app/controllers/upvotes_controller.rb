class UpvotesController < ApplicationController
	  def create
    idea = Idea.find(params[:idea_id])
    idea.upvotes.create! user: current_user
    redirect_to ideas_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to ideas_path
  end

end
