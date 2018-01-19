# Load the rails application
require_relative 'application'

PAYLOAD_INITIAL_TEXT = ENV.fetch('PAYLOAD_INITIAL_TEXT', 'Enter the Password to be Shared')

# If deploying PasswordPusher yourself, you should change these CRYPT values.
# Controls the "Expire After Days" form settings in Password#new
EXPIRE_AFTER_TIME_DEFAULT = Integer(ENV.fetch('EXPIRE_AFTER_TIME_DEFAULT', 1))
EXPIRE_AFTER_TIME_MIN = Integer(ENV.fetch('EXPIRE_AFTER_TIME_MIN', 1))
EXPIRE_AFTER_TIME_MAX = Integer(ENV.fetch('EXPIRE_AFTER_TIME_MAX', 28))

# Controls the "Expire After Views" form settings in Password#new
EXPIRE_AFTER_VIEWS_DEFAULT = Integer(ENV.fetch('EXPIRE_AFTER_VIEWS_DEFAULT', 1))
EXPIRE_AFTER_VIEWS_MIN = Integer(ENV.fetch('EXPIRE_AFTER_VIEWS_MIN', 1))
EXPIRE_AFTER_VIEWS_MAX = Integer(ENV.fetch('EXPIRE_AFTER_VIEWS_MAX', 10))

# DELETABLE_BY_VIEWER_PASSWORDS
# Can passwords be deleted by viewers?
#
# When true, passwords will have a link to optionally delete
# the password being viewed.
# When pushing a new password, this option will also add a
# checkbox to conditionally enable/disable this feature on
# a per-password basis.
DELETABLE_BY_VIEWER_PASSWORDS = ENV.fetch('DELETABLE_BY_VIEWER_PASSWORDS', 'true') == 'true'

# DELETABLE_BY_VIEWER_DEFAULT
#
# When the above option (DELETABLE_BY_VIEWER_PASSWORDS) is set to
# true, this option does two things:
#   1. Sets the default check state for the "Allow viewers to
#       optionally delete password before expiration" checkbox
#   2. Sets the default value for newly pushed passwords if
#       if unspecified (such as with a json request)
#
DELETABLE_BY_VIEWER_DEFAULT = ENV.fetch('DELETABLE_BY_VIEWER_DEFAULT', 'true') == 'true'

# Initialize the rails application
Rails.application.initialize!
