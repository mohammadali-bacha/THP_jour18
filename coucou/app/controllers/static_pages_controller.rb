class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def me_about
    # render "static_pages/me/about"
    # @ouam = Ouam.find#(params[:id])
  end

  def group_about
    # render "static_pages/group/about"
    # @team = Team.find#(params[:id])
  end

end
