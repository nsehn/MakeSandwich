# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MakeSandwich::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings ={
address: "smtp.gmail.com",
  port: 587,
  #domain: "example.com",
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: ENV["GMAIL_USERNAME"],
  password: ENV["GMAIL_PW"]
}

  
  