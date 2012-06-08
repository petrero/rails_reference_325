class NewslettersController < ApplicationController
  def deliver
    QC.enqueue "Newsletter.deliver", params[:id]
    redirect_to newsletters_url, notice: "Delivered newsletter."
  end

  def index
    @newsletters = Newsletter.order("id")
  end
end
