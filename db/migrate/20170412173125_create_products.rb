class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :kind
      t.text :description
      t.decimal :price
      t.string :image
      t.belongs_to :establishment, foreign_key: true

      t.timestamps
    end
  end
end
