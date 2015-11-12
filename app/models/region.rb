class Region < ActiveRecord::Base
  has_many :accessible_regions
  has_many :users, :through => :accessible_regions
  has_many :areas
  belongs_to :holding
end
