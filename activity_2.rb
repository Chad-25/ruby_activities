class Employee
  def initialize(first_name)
    @first_name = first_name
  end

  def foo(other)
    other.protected_helper
  end

  protected

  def protected_helper
    puts "protected"
  end
end

abdul = Employee.new("Abdul")
elon = Employee.new("Elon")

abdul.foo(elon)
elon.foo(abdul)
# elon.protected_helper
