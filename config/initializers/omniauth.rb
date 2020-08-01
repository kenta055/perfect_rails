Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, '81738f5a21d6e5c409eb', 'ce1d2bfc4221fe5bb452016d3fedf1dbeb0e9f48'
  end
end