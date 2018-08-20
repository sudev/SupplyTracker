class ItemSubtype < ApplicationRecord
  include HasCode

  belongs_to :item_type
end
