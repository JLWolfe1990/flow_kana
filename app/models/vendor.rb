class Vendor < ApplicationRecord
  has_many :products

  validates :name, presence: true

  def self.grouped_counts
    connection.execute(count_sql)
  end

  def self.count_sql
    "SELECT vendors.name, count(products.name)
    FROM vendors LEFT JOIN products on vendors.id = products.vendor_id
    GROUP BY vendors.name
    ORDER BY vendors.name DESC"
  end
end
