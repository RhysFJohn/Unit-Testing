require 'music_library'

RSpec.describe MusicLibrary do 
  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    music_library = MusicLibrary.new
    track_1 = double :track, matches?: true
    expect(track_1).to receive(:matches?).with("joy").and_return(true)
    track_2 = double :track, matches?: false
    expect(track_2).to receive(:matches?).with("joy").and_return(false)
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search("joy")).to eq [track_1]
  end
end