class ComplaintsController < ApplicationController
  before_action :complaint_slug

  def index
    @complaint_slug ||= Complaint.create(complaint_slug: SecureRandom.hex(4).to_s).complaint_slug
  end

  def who

  end

  def when

  end

  def where

  end

  def what

  end

  def why

  end

  def trans
    if params[:Company_name_1] && params[:Company_name_2] && params[:Company_name_3]
      flash[:possible] = Company.all.map{|c| c.name if c.name[0].downcase == params[:Company_name_1] && c.name[1].downcase == params[:Company_name_2] && c.name[2].downcase == params[:Company_name_3]}.compact[1..10]
      redirect_to who_path(complaint_slug: @complaint_slug)
    end
  end

  private

  def complaint_slug
    @complaint_slug = params[:complaint_slug]
  end

end
