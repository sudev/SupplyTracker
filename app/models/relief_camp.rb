# frozen_string_literal: true

class ReliefCamp < ApplicationRecord
  include HasCode

  belongs_to :coordinator, class_name: 'User', foreign_key: 'coordinator_id', inverse_of: :relief_camps, optional: true
  belongs_to :district

  def code_prefix
    'CAMP'
  end
end
