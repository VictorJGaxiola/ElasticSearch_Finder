class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :cart, index: true, foreign_key: true
      t.integer :pay_method
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
