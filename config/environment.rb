# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MakeSandwich::Application.initialize!

ActionMailer::Base.delivery_method = :sendmail

MakeSandwich::Application.configure do
config.action_mailer.smtp_settings = {
  enable_starttls_auto: true,
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  user_name: 'myemail@gmail.com',
  password: '<password>'
}
end
