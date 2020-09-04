Sidekiq.configure_server do |config|
  config.redis = { url: Rails.env.development? ? 'redis://localhost:6379/0' : ENV['REDIS_PROVIDER'] }
end
 
Sidekiq.configure_client do |config|
  config.redis = { url: Rails.env.development? ? 'redis://localhost:6379/0' : ENV['REDIS_PROVIDER'] }
end