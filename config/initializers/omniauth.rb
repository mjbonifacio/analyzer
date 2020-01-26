# config/initializers/omniauth.rb

require 'rspotify/oauth'

Rails.application.config.to_prepare do
  OmniAuth::Strategies::Spotify.include SpotifyOmniauthExtension
end

Rails.application.config.middleware.use OmniAuth::Builder do
  client_id = ENV.fetch('SPOTIFY_CLIENT_ID', nil)
  client_secret = ENV.fetch('SPOTIFY_CLIENT_SECRET', nil)

  provider :spotify, client_id, client_secret, scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end


# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :spotify,
#     Rails.application.credentials.spotify[:client_id],
#     Rails.application.credentials.spotify[:client_secret],
#     scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
# end
