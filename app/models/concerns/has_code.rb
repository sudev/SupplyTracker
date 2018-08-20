module HasCode
  extend ActiveSupport::Concern

  included do
    after_commit :generate_code!
  end

  def generate_code!
    self.update_column(:code, "#{self.code_prefix}%06d" % self.id)
  end
end
