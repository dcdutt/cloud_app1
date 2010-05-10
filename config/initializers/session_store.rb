# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cloud_app1_session',
  :secret      => 'e308abc1c66d9c8d946c0b79fdf5cf1114dd0fff5d22e7dbb7a16f746ada61bca47a6767c6033fd7da2b10ec7663edda49f07e72c8760a5cec9f8f2ef5a64d9d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
