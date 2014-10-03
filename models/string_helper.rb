class StringHelper
  def self.unurl(name)
    name.gsub('-', ' ')
  end
end