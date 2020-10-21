require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        provider:              'AWS',                        # required
        aws_access_key_id:     ENV['S3_ACCESS_KEY'],         # required unless using use_iam_profile
        aws_secret_access_key: ENV['S3_SECRET_KEY'],         # required unless using use_iam_profile
        use_iam_profile:       true,                         # optional, defaults to false
        region:                ENV['S3_BUCKET_REGION'],      # optional, defaults to 'us-east-1'
        host:                  's3.example.com',             # optional, defaults to nil
        endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory  = 'amiran-bbq'                                          # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  end
  
  # CarrierWave.configure do |config|
  #   config.fog_provider = 'fog/aws'
  #   config.fog_credentials = {
  #       provider: 'AWS',
  #       region: ENV['S3_BUCKET_REGION'],
  #       aws_access_key_id: ENV['S3_ACCESS_KEY'],
  #       aws_secret_access_key: ENV['S3_SECRET_KEY'],
  #       :path_style => true
  #   }
  #
  #   config.fog_directory = ENV['S3_BUCKET_NAME']
  # end


  
end
