class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  after_save   :add_to_last_cart, :update_cart_price
  after_destroy :decrease_cart_price

  def cart
    Cart.find(cart_id)
  end

  def product
    Product.find(order_id)
  end

  private
    def add_to_last_cart
      self.update(cart: Cart.last)
    end

    def update_cart_price
      cart.total_price += product.price
    end

    def decrease_cart_price
      cart.total_price -= product.price
    end
end
