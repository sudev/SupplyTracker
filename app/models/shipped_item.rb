class ShippedItem < ApplicationRecord
  belongs_to :requirement, optional: true
  belongs_to :item_category, optional: true
  belongs_to :item_type, optional: true
  belongs_to :item_subtype, optional: true
  belongs_to :item_unit, optional: true
  belongs_to :source, class_name: 'Area', optional: true
  belongs_to :destination, class_name: 'Area', optional: true
  belongs_to :relief_camp, optional: true
  belongs_to :current_location, class_name: 'Area', optional: true
end
