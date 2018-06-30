require 'time'

class Course
  attr_reader :name, :dates
  def initialize(name, *dates)
    @name = name
    @dates = dates
  end

def self.builder
  file = 'cursos.txt'
  courses = []
  File.readlines(file).each do |line|
    all_courses = line.chomp.split(', ')
    name, dates = all_courses.shift, all_courses
    courses << Course.new(name, *dates)
  end
  return courses
end

def self.courses_previous_to(date= Time.now)
  target_date = Time.parse(date)
  courses = builder

  courses.each do |course|
    date = Time.parse(course.dates[0])
    puts course.name if date < target_date
  end
end

def self.courses_later_than(date = Time.now)
  target_date = Time.parse(date)
  courses = builder

  courses.each do |course|
    date = Time.parse(course.dates[0])
    puts course.name if date > target_date
  end
end
end

Course.courses_previous_to("2017-05-17")
Course.courses_later_than("2017-05-17")
