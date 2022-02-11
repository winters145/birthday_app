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

  def days_until
    (Date.parse(self.date)-Date.parse(Date.today.to_s)).to_s.split("/")[0].to_i
  end
end