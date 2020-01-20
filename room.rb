class Room

  attr_reader :name, :limit, :till, :guest_list, :track_list, :price
  attr_writer :limit, :till, :guest_list, :track_list, :price

  def initialize(name, till, limit, price)
    @name=name
    @till=till
    @limit=2
    @price=3
    @guest_list=[]
    @track_list=[]
  end





  ##func to return name

  def name_room
    return @name
  end

  def price
    return @price
  end

  def till
    return @till
  end

  # ##func to add guest
  def add_guest(guest)
    @guest_list.push(guest)
  end

  ### func to count guests
  def guest_count
    @guest_list.count
    p @count
  end

  # ### func to remove guest
  def remove_guest
    @guest_list.pop
  end

  ##func to add track
  def add_track(track)
    @track_list.push(track)
  end
  ##fuc to remove track
  def remove_track()
    @track_list.pop
  end

  # func for room limit
  def room_limit
    if @guest_list.length > 2
      return false
    else
      true
    end
  end




















end
