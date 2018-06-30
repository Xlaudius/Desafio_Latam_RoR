class Table
  attr_reader :name, :days
  
  def initialize(name, *days)
    @name = name
    @days = days.map(&:to_i)
  end

  def self.build(file)
    tables = []
    File.readlines(file).each do |line|
      all_data = line.chomp.split(', ')
      name, days = all_data.shift, all_data
      tables << Table.new(name, *days)
    end
    return tables
  end

  def self.greatest_value(file)
    table_instances = build(file)
    table_instances.each do |each|
      max_day = each.days.find_index(each.days.max) + 1
      puts "#{each.name}, #{each.days.max} on day #{max_day}"
    end
  end

  def self.total_average(file)
    table_instances = build(file)
    total = 0

    table_instances.each do |table|
      table.days.each do |day|
        total += day.to_i
      end
    end
    avg = total / table_instances.length
    puts "Total income: #{total} in #{table_instances.length} tables, average #{avg}"
  end
end

# Table.greatest_value('casino.txt')
Table.total_average('casino.txt')

