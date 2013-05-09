require 'test_helper'

class OrderTest < ActiveSupport::TestCase
   test "saves order to orders table" do
   		@order = Order.new
   		assert !@order.save
   end
end
