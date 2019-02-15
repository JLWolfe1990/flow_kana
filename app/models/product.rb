class Product < ApplicationRecord
  belongs_to :vendor

  validates :vendor_id, presence: true
end
