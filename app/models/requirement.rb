class Requirement < ApplicationRecord
  belongs_to :relief_camp
  belongs_to :location
  belongs_to :area
  belongs_to :user
end
