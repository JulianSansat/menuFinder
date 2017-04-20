class AddProductToEstablishment < ActiveRecord::Migration[5.0]
  def change
    add_reference :establishments, :product, foreign_key: true
  end
end
