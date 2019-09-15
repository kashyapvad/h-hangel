class CreativesController < ApplicationController
  before_action :set_creative, only: [:update, :show]
  layout "creative"

  def index
    @creative = Creative.new (params[:email])
  end

  def create
    @creative = Creative.where(:email => creative_params[:email]).last
    if @creative.blank?
      @creative = Creative.new (creative_params)
    else
      redirect_to '/creatives/exist'
      return
    end

    if @creative.save
      redirect_to '/creatives/success'
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
  def creative_params
    params.require(:creative).permit(:email)
  end
end
