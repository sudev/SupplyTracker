# frozen_string_literal: true

class ReliefCamp < ApplicationRecord
  include HasCode

  belongs_to :coordinator, class_name: 'User', foreign_key: 'coordinator_id', inverse_of: :relief_camps, optional: true
  belongs_to :area, optional: true
  belongs_to :district

  scope :has_district_id, ->(id) {where(district_id: id)}
  scope :has_area_id, ->(id) {where(area_id: id)}
  scope :has_name, -> (name){where("name ILIKE ?", "%#{name}%") }


  def code_prefix
    'CAMP'
  end
end
