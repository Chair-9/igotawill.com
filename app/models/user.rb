class User < ActiveRecord::Base
  include Clearance::User

  has_many :contacts
  has_many :next_of_kins
  has_many :wills

  
end
