# class Employee
#   attr_accessor :first_name, :last_name, :age, :performance_rating

#   def initialize(first_name, last_name, age, performance_rating=0, base_salary=1)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#     @performance_rating = performance_rating
#     @base_salary = base_salary
#   end

#   def resign
#     puts "Rendering 30 days..."
#   end
# end

# class CTO < Employee
#   def initialize(first_name, last_name, age, performance_rating=0, equity)
#     super(first_name, last_name, age, performance_rating)
#     @equity = equity
#   end
# end
# john = CTO.new("John", "Young", 25, 90, 30)
# puts john.class

# class SoftwareEngineer < Employee
#   def write_code
#     puts "Writing code..."
#   end
# end


# class BackendEngineer < SoftwareEngineer
#   def write_code
#     puts "Writing backend code..."
#   end
# end

# chad = BackendEngineer.new("chad", "ayop", 30)
# chad.write_codeo

# class Manager < Employee
#   def evaluate_employee(employee, performance_rating)
#     puts "Evaluating employee..."
#     employee.performance_rating = performance_rating
#   end
# end

# chad = Employee.new("Chad", "Ayop", 30)
# chad.resign


# elon = Manager.new("Elon", "Musk", 55, 65)
# elon.resign
# elon.evaluate_employee(chad, 80)
# puts chad.performance_rating


def calculate(arr)
  counter = 0
  sum = 0
  arr.each do |positive_num|
    counter += 1 if positive_num > 0
    sum += positive_num if positive_num <= 0
  end
  new_array = []
  new_array.push(counter)
  new_array.push(sum)
  puts new_array.inspect


end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -40, -15, 65, -10]
calculate(array)

class CalculateArray
  def initialize(arr)
  @arr = arr
  end

  def display_array
    puts "The new array #{[count_positive, sum_negative]}."
    puts display_num
  end

  def display_num
    puts "Number of positive numbers: #{count_positive}"
    puts "Sum of negative numbers: #{sum_negative}"
  end

  def count_positive
    counter = 0
    @arr.each do |num|
      counter += 1 if num > 0
    end
    counter
  end

  def sum_negative
    sum = 0
    @arr.each do |num|
    sum += num if num <= 0
    end
    sum
  end
end

new_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -40, -15, 65, -10]

new_array_class = CalculateArray.new(new_array)
new_array_class.display_array
