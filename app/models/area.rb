class Area < ActiveRecord::Base
  belongs_to :region, counter_cache: :count_of_areas
  has_many :companies
end
