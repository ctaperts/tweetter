class TwitsController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def show
    @twit = Twit.all
  end

  def edit
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

  private

  def twit_params
  end

end
