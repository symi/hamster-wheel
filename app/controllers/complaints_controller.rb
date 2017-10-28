class ComplaintsController < ApplicationController
  before_action :complaint_slug, except: :index

  def index
    @complaint = Complaint.create(complaint_slug: SecureRandom.hex(4).to_s)
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
