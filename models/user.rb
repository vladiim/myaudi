class NullUser
  def id
    0
  end

  def trent?
    false
  end

  def admin?
    false
  end

  def null?
    true
  end
end

class User
  attr_accessor :name, :surname, :email, :password, :id, :car,
    :grade, :trips

  def self.get(id)
    users = User.new.users
    users.each do |user|
      return user if user.id == id
    end
    false
  end

  def authenticate(username, password)
    users.each do |user|
      return user if username == user.email && password == user.password
    end
    false
  end

  def trent?
    self.name == 'Trent'
  end

  def admin?
    self.name == 'Admin'
  end

  def null?
    false
  end

  def users
    [ trent, mark, audi_admin ]
  end

  private

  def trent
    user = User.new
    user.id = 2
    user.name = "Trent"
    user.surname = "Mansfield"
    user.email = ENV['TRENT_E']
    user.password = ENV['TRENT_P']
    user.car = 'A5 Sportsback'
    user.grade = 'B+'
    user.trips = '200'
    user
  end

  def mark
    user = User.new
    user.id = 3
    user.name = "Mark"
    user.surname = "Long"
    user.email = ENV['MARK_E']
    user.password = ENV['MARK_P']
    user.car = 'A5 Sportsback'
    user
  end

  def audi_admin
    user = User.new
    user.id = 1
    user.name = 'Admin'
    user.surname = ""
    user.email = ENV['AUDI_ADMIN_E']
    user.password = ENV['AUDI_ADMIN_P']
    user
  end
end