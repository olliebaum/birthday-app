class BirthdayGreeter
  def initialize(name, day, month)
    @name = name
    @today = Date.today
    @bday = Date.parse("#{day}/#{month}/#{@today.year}")
  end

  def print_str
    @name = "stranger" if @name.empty?
    get_next_bday
    if is_today?
      "Happy Birthday #{@name}!"
    else
      "Hey #{@name}!<br>" +
      "It's your birthday in #{days_until} #{day_str}"
    end
  end

  private
  attr_accessor :bday, :today

  def is_today?
    days_until == 0
  end

  def get_next_bday
    @bday = @bday.next_year if bday < today
  end

  def days_until
    (bday - today ).to_i
  end

  def day_str
    days_until == 1 ? "day" : "days"
  end
end
