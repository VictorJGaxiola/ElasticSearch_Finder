class Cart < ActiveRecord::Base
  belongs_to :user
  after_save :reload,     unless: open?
  after_save :close_cart, if: successfull_payment?

  private

    def reload
      Cart.create(user_id: user_id)
    end

    def close_cart
      self.update(open: false)
    end
end
