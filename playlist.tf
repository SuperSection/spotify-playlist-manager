data "spotify_search_track" "arijit" {
  artist = "Arijit Singh"
}

data "spotify_search_track" "kk" {
  artist = "KK"
}

data "spotify_search_track" "atif" {
  artist = "Atif Aslam"
}

data "spotify_search_track" "mithoon" {
  artist = "Mithoon"
}

data "spotify_search_track" "pritam" {
  artist = "Pritam"
}

resource "spotify_playlist" "Bollywood" {
  name        = "For Us"
  description = "A soulful collection of romantic melodies dedicated for My Life Partner and our Love Story. Let these heartfelt songs take us on an emotional journey through love, passion and everything in between. The perfect soundtrack for those special moments with My Love."

  tracks = distinct(flatten([
    data.spotify_search_track.kk.tracks[*].id,
    data.spotify_search_track.atif.tracks[*].id,
    data.spotify_search_track.arijit.tracks[*].id,
    data.spotify_search_track.mithoon.tracks[*].id,
    data.spotify_search_track.pritam.tracks[*].id,

    # Tu Hi Haqeeqat
    "3OLFqbd9ZeVjaUKTiaLsD6",

    # Raaz Reboot
    "5Q39OZm29c4V3prqngD7Rf",
    "2wJ9d1Gfj8OqcznPAroqvh",
    "2xPgLSozcGeM6rQi5eIWmY",
    "7nbGvjZBJssfZUVj2tw5kr",

    # Chal Ghar Chalen
    "2U0BLmYoSESYOdwMxW2yA9",
  ]))
}
