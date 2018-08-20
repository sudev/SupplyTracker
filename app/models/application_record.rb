class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def code_prefix
    self.class.name.upcase
  end
end
