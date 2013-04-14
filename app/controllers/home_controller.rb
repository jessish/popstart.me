class HomeController < ApplicationController
  def index
    @registrations = Registration.all
    @registration = Registration.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registrations }
    end


  end
end
