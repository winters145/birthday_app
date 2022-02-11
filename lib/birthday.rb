class Birthday

  attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end

  def date
    "#{@month}/#{@day}"
  end
end