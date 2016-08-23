class TwitsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_twit, only: [:show, :edit, :update, :destroy]
  def index
    @twits = Twit.all
  end

  def show
  end

  def edit
  end

  def update
    # before_action @twit = twit.find(params[:id])
    respond_to do |format|
      if @twit.update(twit_params)
	format.html { redirect_to @twit, notice: "Twit updated" }
      else
	format.html { render :edit }
      end
    end
  end

  def new
    @twit = Twit.new
  end

  def create
    @twit = Twit.new(twit_params)
    respond_to do |format|
      if @twit.save 
	format.html { redirect_to @twit, notice: "Twit saved" }
      else
	format.html { render :new }
      end
    end
  end

  def destroy
    @twit.destroy
    respond_to do |format|
      if @twit.destroy
	format.html { redirect_to twits_url, notice: "Twit destroyed" }
      end
    end
  end

  private

  def twit_params
    params.require(:twit).permit(:message, :user_id)
  end

  def set_twit
    @twit = Twit.find(params[:id])
  end

end
