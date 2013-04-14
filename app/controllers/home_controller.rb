class HomeController < ApplicationController
  def index
  end
  def test
  	@registration = Registration.new
  end
end
