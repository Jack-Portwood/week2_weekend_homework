class Guests

  attr_reader :name, :fav_track, :wallet

  def initialize(name, fav_track, wallet)####reslove why param isnt working
    @name = name
    @fav_track = fav_track
    @wallet = wallet
  end

  def guest_name
    return @name
  end

  def fav_track
    return @fav_track
  end

  def wallet
    return @wallet
  end

  def guest_pay(room)
    @wallet -=(room.price)
  end



































end
