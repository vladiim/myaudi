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

  def self.authenticate(username, password)
    false unless username == admin.email && password == admin.password
  end

  def users
    [ trent ]
  end

  private

  def admin
    user = User.new
    user.id = 1
    user.name = 'Test'
    user.surname = "Tester"
    user.email = ENV['ADMIN_E']
    user.password = ENV['ADMIN_P']
    user
  end

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
end