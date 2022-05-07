require 'googleauth'

# Get the environment configured authorization
# credentials path ~/gcp/stunning-crane-193313-0b6809dbc448.json
scopes = ['https://www.googleapis.com/auth/cloud-platform',
          'https://www.googleapis.com/auth/compute']
authorization = Google::Auth.get_application_default(scopes)

# Add the the access token obtained using the authorization to a hash, e.g
# headers.
some_headers = {}
authorization.apply(some_headers)

require 'google/cloud/storage'

# https://www.rubydoc.info/gems/google-cloud-storage/0.20.0/Google/Cloud/Storage
storage = Google::Cloud::Storage.new

bucket = storage.bucket 'practice-brendt'
file = bucket.file 'example.txt'
file.download './file.txt'
