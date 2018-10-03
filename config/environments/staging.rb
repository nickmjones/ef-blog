Rails.application.configure do
  config.log_level = ENV['LOG_LEVEL'] ? ENV['LOG_LEVEL'].to_sym : ('info').to_sym
  config.consider_all_requests_local = ENV['CONSIDER_REQUESTS_LOCAL']
end