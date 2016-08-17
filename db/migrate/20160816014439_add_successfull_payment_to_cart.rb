class AddSuccessfullPaymentToCart < ActiveRecord::Migration
  def change
    add_column :carts, :successfull_payment, :boolean, default: false
  end
end
