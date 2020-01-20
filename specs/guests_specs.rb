require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guests')
require_relative('../tracks')


class GuestsTest < MiniTest::Test

  def setup
    @guest1=Guests.new("Camron","Holy Diver",10)
    @room=Room.new("Doom Room",50,2,3)

  end

  def test_guest_name
    assert_equal("Camron",@guest1.name)
  end

  def test_fav_track
    assert_equal("Holy Diver",@guest1.fav_track)
  end

  def test_wallet
    assert_equal(10,@guest1.wallet)
  end

  def test_guest_pay
    @guest1.guest_pay(@room)
    assert_equal(7,@guest1.wallet)
  end
end
