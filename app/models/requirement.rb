class Requirement < ApplicationRecord
  belongs_to :relief_camp, optional: true
  belongs_to :area, optional: true
  belongs_to :user, optional: true
end
