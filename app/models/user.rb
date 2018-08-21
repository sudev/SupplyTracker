# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  COORDINATOR = "COORDINATOR"
  ROLES = [COORDINATOR]

  has_many :relief_camps, foreign_key: :coordinator_id

  accepts_nested_attributes_for :relief_camps
end
