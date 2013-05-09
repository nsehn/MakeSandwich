require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

	def test_sandwich_order
		@order = order

	#This is to test if the email was queued after it was sent
	email = UserMailer.create_sandwich_order('nishasehn@gmail.com').deliver
	assert !ActionMailer::Base.deliveries.empty?

	#Test to see if the email contains the text
	assert_equal [order.email], email.to
	assert_equal "Sandwich order", email.subject
	assert_match(/<h1>Sandwich order by/, email.encoded)
	assert_match(/Sandwich order by/, email.encoded)

	end
end
