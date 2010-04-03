# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_amaxe_session',
  :secret      => '96b33819fcbd38a9aa6fbaf0d705a1a25884ad69ec8ec4e89be5dfee597f656f4ab2ec0f3456cb7f369a75d60ae3b991ac91f968a565f873ad771f3940f2c7b5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
 ActionController::Base.session_store = :active_record_store
