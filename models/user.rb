class User
  attr_accessor :id
  def self.authenticate(username, password)
    return false unless test(username, password)
    user = self.new
    user.id = 1
    user
  end

  def self.get(id)
    user = self.new
    user.id = id
    return user
  end

  private
  def self.test(username, password)
    username == ENV['TEST_U'] && password == ENV['TEST_P']
  end
end