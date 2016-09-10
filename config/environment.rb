# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Huntermeyer::Application.initialize!
ActionMailer::Base.perform_deliveries  = true
ActionMailer::Base.delivery_method     = :smtp
ActionMailer::Base.default_url_options = { host: 'huntermeyer.com' }
ActionMailer::Base.smtp_settings       = {
  address:        ENV['HUNTER_EMAIL_URL'],
  port:           465,
  domain:         'huntermeyer.com',
  user_name:      ENV['HUNTER_EMAIL_UN'],
  password:       ENV['HUNTER_EMAIL_PW'],
  authentication: 'login',
  ssl:            true,
  tls:            true,
  enable_starttls_auto: true
}
