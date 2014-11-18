class StringHelper
  def self.unurl(name)
    name.gsub('-', ' ').capitalize
  end

  def self.url(name)
    name.gsub(' ', '-').downcase
  end

  def self.titleize(name)
    name = name.to_s
    name.gsub('_', ' ').capitalize
  end
end