CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV['BUCKET_NAME']
  config.aws_acl    = :public_read
  config.asset_host = 'indiearcades.s3-accelerate.amazonaws.com'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id:     ENV["ACCESS_KAY_ID"],
    secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region:            'us-west-2' # Required
  }
end
