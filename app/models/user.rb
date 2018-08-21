# frozen_string_literal: true

class User < ApplicationRecord
  extend Enumerize

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enumerize :user_type, in: %w(coordinator volunteer), predicates: true, scope: :of_type

  has_many :camp_members
  has_many :relief_camps, through: :camp_members
  has_many :coordinated_relief_camps, class_name: 'ReliefCamp', foreign_key: :coordinator_id
end
