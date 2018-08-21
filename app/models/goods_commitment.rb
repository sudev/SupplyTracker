class GoodsCommitment < ApplicationRecord
  include ActiveModel::AttributeAssignment
  attr_accessor :name, :phone_number, :email

  belongs_to :user, optional:true
  has_many :inventories, dependent: :destroy

  accepts_nested_attributes_for :inventories, allow_destroy: true

  before_create do
    user = User.find_by_email(self.email)
    if user.nil?
      if self.name and self.email
        user = User.create({
             name: self.name,
             email: self.email,
             phone_number: self.phone_number,
             password: "password"
         })
        self.user_id = user.id
      end
    else
      self.user_id = user.id
    end
  end
end
