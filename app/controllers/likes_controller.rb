class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_twit

  def create
    @twit.likes.where(user_id: current_user.id).first_or_create
    respond_to do |format|
      format.html { redirect_to request.referrer }
    end
  end

  private

  def set_twit
    @twit = Twit.find(params[:id])
  end

end
