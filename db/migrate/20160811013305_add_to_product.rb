class AddToProduct < ActiveRecord::Migration
  def change
    add_column :products, :stock, :integer
    add_reference :products, :category, index: true, foreign_key: true
  end
end
