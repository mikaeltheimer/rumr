class StaticPagesController < ApplicationController
  def home
    @bubbles = Bubble.where("name LIKE ?", "%#{params[:q]}%")
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
