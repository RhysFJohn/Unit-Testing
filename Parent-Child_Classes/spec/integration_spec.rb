require 'music_library'
require 'track'

RSpec.describe "integration" do
  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title1", "artist1")
    track_2 = Track.new("title2", "artist2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    music_library = MusicLibrary.new
    track_1 = Track.new("joy", "samm henshaw")
    track_2 = Track.new("chronicles", "cordae")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("joy")).to eq [track_1]
  end
end