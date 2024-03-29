Rails.application.routes.draw do
  root "musics#index"

  get "/api", to: "musics#index"
  get "/api/musics", to: "musics#index"
  get "/api/musics/:id", to: "musics#show"
  get "/api/musics/:id/src", to: "musics#play"
  get "/api/musics/:id/videoID", to: "musics#videoID"
  post "/api/musics", to: "musics#add"
  delete "/api/musics/:id", to: "musics#delete"

  get "/api/playlists", to: "playlists#index"
  get "/api/playlists/:id", to: "playlists#show"
  get "/api/playlists/:id/musics", to: "playlists#musics"
  post "/api/playlists", to: "playlists#add"
  post "/api/playlists/:id", to: "playlists#addMusic"
  post "/api/spotifyPlaylist", to: "playlists#addSpotifyPlaylist"
  delete "/api/playlists/:id", to: "playlists#delete"
  delete "/api/playlists/:id/musics/:music_id", to: "playlists#deleteMusic"
  
  post "/api/token", to: "application#token"
  post "/api/login", to: "application#login"

  get "/api/*path", to: "musics#index"
  post "/api/*path", to: "musics#index"
  delete "/api/*path", to: "musics#index"
  put "/api/*path", to: "musics#index"
end
