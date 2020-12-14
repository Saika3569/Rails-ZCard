require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "進階" do
      cart = Cart.new
      cart_hash = { 
        "items" =>
        [ 
          {"item_id" => 1, "quantity" => 3},
          {"item_id" => 2, "quantity" => 2}
        ]
      }
      expect(cart.serialize).to eq cart_hash
    end
  end

end


# AAA
# Arrange
# Act
# Assert