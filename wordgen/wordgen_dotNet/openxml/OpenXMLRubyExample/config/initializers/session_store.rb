# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Upload_session',
  :secret      => 'ad7df7abd37d96e91b379f2834cf1a4abae6359dec895e688fc214025676ec62b1f0cc3108fc510dbfff8ad86b7c9f01b1031b808c7ae5954bae28c23b247675'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
