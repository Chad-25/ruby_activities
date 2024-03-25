# #Complete missing code

# class Profile
#   attr_accessor :full_name, :age, :address, :work
#   def initialize(full_name, age, address, work)
#     @full_name = full_name
#     @age = age
#     @address = address
#     @work = work
#   end
# end

# my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

# puts my_profile.full_name
# my_profile.full_name = 'Juan Cruz'

# my_profile.age = 25
# my_profile.work = 'Software Engineer'

# puts my_profile.full_name
# puts my_profile.age
# puts my_profile.work
# puts my_profile.address


#Complete missing code

module AdminPermisson
  def edit_users_profile
    puts "Admin updated all users profile"
  end
end

module BuyerPermission
  def buy
    puts "Buyer has bought an item"
  end

end

class User
  attr_accessor :password
  def initialize(username, password, ip_address)
    @username = username
    @password = password
    @ip_address = ip_address
  end

  def change_password=(new_password)
    @password = new_password
  end

  protected
  def login
    puts "User logged in. IP address: #{@ip_address}"
  end
end


class Admin < User
  include AdminPermisson

  def admin_login
    login
  end

end


class Buyer < User
  include BuyerPermission

  def buyer_login
    login
  end

end

## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile
puts my_admin.password
my_admin.change_password = 'new_password'
puts my_admin.password

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy
puts buyer.password
buyer.change_password = 'new_password'
puts buyer.password
