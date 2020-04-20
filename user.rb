class User
  # attributes, methods -> thuoc tinh va phuong thuc
  def initialize(email, first_name, last_name)
    @email = email
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def read_a_post
    'candidate is reading a post'
  end
end

class Manager < User
  def read_a_post
    'manager is reading a post'
  end

  def write_a_post
    'writing a post'
  end
end

class Admin < User
  def write_a_post
    'writing a post'
  end
end


# Candidate => only read a post
# Manager => read and write a post
# Admin => read, write, edit, delete a post


manager1 = Manager.new('manager1@gmail.com', 'Manager', 'One')
puts manager1.full_name
puts manager1.read_a_post
puts manager1.write_a_post

u = User.new('duyet.vn@gmail.com', 'Duyet', 'Nguyen')
puts u.write_a_post

# u2= User.new('luan@gmail.com', 'Thuy Luan', 'Le')
# puts u2.full_name