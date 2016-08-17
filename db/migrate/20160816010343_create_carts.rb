class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.decimal :total_price, default: 0.0
      t.boolean :open,        default: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
