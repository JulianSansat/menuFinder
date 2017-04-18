class CreateEstablishments < ActiveRecord::Migration[5.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :adress
      t.string :kind
      t.string :telephone
      t.boolean :delivery
      t.text :description

      t.timestamps
    end
  end
end
