class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.belongs_to :vendor, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
