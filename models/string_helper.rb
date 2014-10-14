class StringHelper
  def self.unurl(name)
    name.gsub('-', ' ').capitalize
  end

  def self.url(name)
    name.gsub(' ', '-').downcase
  end
end