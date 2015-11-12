class Company < ActiveRecord::Base
  belongs_to :area, counter_cache: :count_of_companies
  belongs_to :holding
end
