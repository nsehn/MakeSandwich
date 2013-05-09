class UserMailer < ActionMailer::Base
  default from: "nishasehn@gmail.com"


  def sandwich_order(order)
  	@order = order
  	mail(:to => 'Deyton.Sehn@docusign.com', :subject => "Sandwich order") #want to add person's name

  end

end
