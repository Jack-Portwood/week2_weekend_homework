require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../tracks')


class TracksTest < MiniTest::Test

  def setup
    @track1=Tracks.new("Holy Diver", "Kill Swtich Engage")
  end


  def test_track_name
    assert_equal("Holy Diver",@track1.name)

  end
  def test_artist_name
    assert_equal("Kill Swtich Engage",@track1.artist)
  end




















end
