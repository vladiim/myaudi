class User
  attr_accessor :id
  def self.authenticate(username, password)
    user = self.new
    if test(username, password)
      user.id = 1
      return user
    end
    false
  end

  def self.get(id)
    user = self.new
    user.id = id
    return user
  end

  private
  def self.test(username, password)
    username == 'test' && password == 'wh00t'
  end
end