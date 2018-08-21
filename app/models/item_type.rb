class ItemType < ApplicationRecord
  include HasCode

  belongs_to :item_category
end
