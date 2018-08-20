class ShippedItem < ApplicationRecord
  belongs_to :requirement
  belongs_to :item_category
  belongs_to :item_type
  belongs_to :item_sub_type
  belongs_to :item_unit
  belongs_to :source, class_name: 'Area'
  belongs_to :destination, class_name: 'Area'
  belongs_to :relief_camp
  belongs_to :current_location, class_name: 'Area'
end
