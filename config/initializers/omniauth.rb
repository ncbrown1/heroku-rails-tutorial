Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, env['GITHUB_KEY'], env['GITHUB_SECRET'], scope: "user,repo,gist"
  provider :google_oauth2, env['GOOGLE_CLIENT_ID'], env['GOOGLE_CLIENT_SECRET'],
    scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online', name: 'google'
end

OmniAuth.config.on_failure = Proc.new do |env|
  SessionsController.action(:auth_failure).call(env)
end