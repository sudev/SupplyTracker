class District < ApplicationRecord
  has_many :areas
  accepts_nested_attributes_for :areas, allow_destroy: true
end
