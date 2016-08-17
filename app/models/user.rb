class User < ActiveRecord::Base
  has_many :orders
  after_create :init_cart

  has_one :last_cart, -> { order 'created_at desc'}, class_name: 'Cart'

  private

    def init_cart
      Cart.create(user: self)
    end
end
