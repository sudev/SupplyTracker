class RequiredItem < ApplicationRecord
  belongs_to :requirement
  belongs_to :item_category
  belongs_to :item_type
  belongs_to :item_sub_type
  belongs_to :item_unit
  belongs_to :item_condition
end
