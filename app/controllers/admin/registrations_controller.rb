class Admin::RegistrationsController < ApplicationController
  before_filter :require_admin_user

  def index
    @event = Event.first #for now there is only one event in the system
    @registrations = Registration.all
  end

  def delete
    if event = Registration.find_by_id(params[:id])
      event.delete
      flash[:notice] = "Successfully deleted registration"
    else
      flash[:error] = "Could not find registration with id #{params[:id]}"
    end
    redirect_to :action => :index
  end

  private
  def require_admin_user
    unless current_user.admin?
      flash[:error] = "Access Denied"
      redirect_to root_url
      return false
    end
    true
  end

end
