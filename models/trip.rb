class Trip
  def self.hero
    OpenStruct.new(date: '23rd Oct 2014', from: 'Redfern', to: 'North Sydney', grade: 'B+', distance: '22', time: '20')
  end
  def self.all
    trips = []
    10.times { trips << self.hero }
    trips
  end
end