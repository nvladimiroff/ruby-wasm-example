class ClickTracker

  attr_accessor(:clicks)


  def initialize
    @clicks = 0
  end


  def click
    @clicks += 1
  end

end
