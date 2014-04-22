# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Huntermeyer::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.mandrillapp.com',
  port:                 587,
  user_name:            'huntermeyer@live.com',
  password:             'HKw7Y742JAUZxhNlvlxQCA',
  authentication:       :login,
  enable_starttls_auto: true
}
