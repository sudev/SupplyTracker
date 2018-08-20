class Area < ApplicationRecord
  include HasCode

  belongs_to :area, optional: true
end
