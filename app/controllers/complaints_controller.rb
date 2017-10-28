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

  end

  private

  def complaint_slug
    @complaint_slug = params[:complaint_slug]
  end

end
