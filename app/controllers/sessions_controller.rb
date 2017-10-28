class SessionsController < ApplicationController

  def new
    
  end

  def create
    complaint = Complaint.find(complaint_slug: params[:slug])
    if complaint
      session[:slug] = complaint.complaint_slug
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:slug] = nil
    redirect_to root_path
  end

end
