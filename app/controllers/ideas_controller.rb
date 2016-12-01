

class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create(idea_params)
  end

  private

  def idea_params
    params.require(:idea).permit(:description, :author)
  end
end
