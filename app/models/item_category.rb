class ItemCategory < ApplicationRecord
  include HasCode

  has_many :item_types, dependent: :destroy
  accepts_nested_attributes_for :item_types, allow_destroy: true
end
