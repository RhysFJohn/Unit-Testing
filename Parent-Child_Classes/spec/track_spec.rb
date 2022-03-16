require 'track'

RSpec.describe Track do
  it "matches when given a keyword in the title" do
    track = Track.new("joy", "samm henshaw")
    expect(track.matches?("joy")).to eq true
  end
  
  it "matches when given a keyword in the artist" do
    track = Track.new("joy", "samm henshaw")
    expect(track.matches?("samm")).to eq true
  end
  
  it "matches when given a keyword in the artist" do
    track = Track.new("joy", "henshaw")
    expect(track.matches?("samm")).to eq false
  end
end