class Inventory < ApplicationRecord
  belongs_to :item_category
  belongs_to :item_type
  belongs_to :item_subtype
  belongs_to :item_unit
  belongs_to :area
end
