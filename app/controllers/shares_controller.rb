class SharesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_share, only: [:show]

  def index
  	@shares = Share.all
  end

  def show
  end


  private
  def share_params
  	params.permit(:id)
  end

  def set_share
    @share = Share.find(share_params[:id])
  end

end
