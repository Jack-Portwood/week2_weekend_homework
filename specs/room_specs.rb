require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guests')
require_relative('../tracks')


class RoomTest < MiniTest::Test

  def setup()
    @room=Room.new("Doom Room",50,2,3)
    @track1=Tracks.new("Holy Diver", "Kill Switch Engage")
    @track2=Tracks.new("Seek and Destroy", "Matallica")
    @guest1=Guests.new("Camron", "Holy Diver",10)
    @guest2=Guests.new("Charlie","Seek and Destroy",15)
    @guest3=Guests.new("Niall", "Sweet Caroline",20)
  end

  ##test to return name

  def test_name_room
    assert_equal("Doom Room",@room.name)
  end

  def test_price
    assert_equal(3,@room.price)
  end

  def test_till
    assert_equal(50,@room.till)
  end


  def test_add_guest()
    @room.add_guest(@guest1)
    assert_equal(1,@room.guest_list.length)
  end

  def test_guest_count
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    assert_equal(3,@room.guest_list.count)
  end

  def test_remove_guest()
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    @room.remove_guest
    assert_equal(2,@room.guest_list.length)
  end


  def test_add_track()
    @room.add_track(@track1)
    assert_equal(1,@room.track_list.length)
  end

  def test_remove_track()
    @room.add_track(@track1)
    @room.add_track(@track2)
    assert_equal(2,@room.track_list.length)
    @room.remove_track
    assert_equal(1,@room.track_list.length)
  end

  ### all test run to this point
  def test_room_limit_fail
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    assert_equal(false,@room.room_limit)
  end

  def test_room_limit_pass
    @room.add_guest(@guest1)
    assert_equal(true,@room.room_limit)
  end

  #### all working to this point

end
