class Holding < ActiveRecord::Base
  has_many :companies
  belongs_to :region
end
