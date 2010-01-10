# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_event-manager_session',
  :secret      => 'dbb51f1709fbc2088958dfa8672cd5009eac0aef71860337d7b4849a01a1d8a061b62145356f99ebdc26faeccad6402f1ed6d56aeff77fb75f46ed40053e8f6e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
