class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end

  def import
    Detail.import(params[:file])
    redirect_to root_url, notice: "Detail Data imported"
  end
end
