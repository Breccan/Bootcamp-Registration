class RegistrationsController < ApplicationController

  def index
    @event = Event.first #for now there is only one event in the system
    @registrations = Registration.all
    @remaining = 26 - Registration.count
  end

  def new
    @registration = Registration.new
    @remaining = 26 - Registration.count
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.event_id ||= 1 #TODO remove once there are more events, this won't break if I forget though.
      if @registration.save
        if Registration.count > 26
          flash[:notice] = "Registration Successful"
        else
          flash[:notice] =  "All the places in the event have been booked, but we've added you to the waitlist."
        end
        redirect_to :action => :index
      else
        flash[:error] = "Registration failed"
        render :action => :new
      end
  end

end
