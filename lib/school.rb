class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    @ending_time = @start_time.to_i + @hours_in_school_day
    "#{@ending_time}:00"
  end

  def is_full_time?
    return true if @hours_in_school_day > 4
    return false if @hours_in_school_day <= 4
  end

  def standard_student_names
    @capitalized_names = []
    @student_names.each do |name|
      @capitalized_names << name.capitalize
    end
    @capitalized_names
  end

  def convert_end_time_to_clock_time
    if end_time.to_i > 12
      @time_difference = @ending_time.to_i - 12
      "#{@time_difference}:00"
    else
      "#{@ending_time}:00"
    end
  end
end

