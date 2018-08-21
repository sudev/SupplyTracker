class CampMember < ApplicationRecord
  belongs_to :relief_camp
  belongs_to :user
end
