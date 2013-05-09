class UserMailer < ActionMailer::Base
  default from: "order@sandwich.com"


  def sandwich_order(order)
  	@order = order
  	mail(:to => 'nishasehn@gmail.com', :subject => "Sandwich order") #want to add person's name

  end
end
