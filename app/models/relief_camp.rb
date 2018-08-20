# frozen_string_literal: true

class ReliefCamp < ApplicationRecord
  belongs_to :coordinator, class_name: 'User', foreign_key: 'coordinator_id', inverse_of: :relief_camps, optional: true
  belongs_to :district
end
