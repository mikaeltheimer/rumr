class StaticPagesController < ApplicationController
  def home
  	@bubble = Bubble.new
    @rumor = Rumor.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bubble }
    end
  end

  def about
  end

  def contact
  end
end
