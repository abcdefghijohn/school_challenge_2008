class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    time = @start_time.slice(0,2).to_i
    finish = time + @hours_in_school_day
    "#{finish}:00"
  end

  def is_full_time?
    if @hours_in_school_day >= 5
      true
    end
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    time = end_time.slice(0,2).to_i
    clock_time = time - 12
    "#{clock_time}:00"
  end
end
