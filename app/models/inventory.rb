class Inventory < ApplicationRecord
  belongs_to :item_category, optional: true
  belongs_to :item_type, optional: true
  belongs_to :item_subtype, optional: true
  belongs_to :item_unit, optional: true
  belongs_to :area, optional: true
end
