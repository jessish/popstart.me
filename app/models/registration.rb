class Registration < ActiveRecord::Base
  attr_accessible :comment, :email, :location, :name, :phone, :vendortype
end
