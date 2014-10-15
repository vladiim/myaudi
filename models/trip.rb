class Trip
  def self.hero
    OpenStruct.new(date: '23rd Oct 2014', from: 'Redfern', to: 'North Sydney', grade: 'B+', distance: '22', time: '20')
  end

  def self.all
    trips = []
    10.times { trips << self.hero }
    trips
  end

  def self.redfern_to_nrth_syd
    [ OpenStruct.new(
      from: 'Redfern St', to: 'Regent St',
      grade: 'A-', grades: [
        OpenStruct.new(grade: 'B-', type: 'Cornering', reason: 'Reason'),
        OpenStruct.new(grade: 'B-', type: 'Acceleration', reason: 'Reason')
        ]
      ), OpenStruct.new(
      from: 'Regent St', to: 'Harris St',
      grade: 'B+', grades: [
        OpenStruct.new(grade: 'B+', type: 'Cornering', reason: 'Reason'),
        OpenStruct.new(grade: 'B+', type: 'Acceleration', reason: 'Reason')
        ]
      ), OpenStruct.new(
      from: 'Harris St', to: 'Another St',
      grade: 'C-', grades: [
        OpenStruct.new(grade: 'C-', type: 'Cornering', reason: 'Reason'),
        OpenStruct.new(grade: 'C-', type: 'Acceleration', reason: 'Reason')
        ]
      ), OpenStruct.new(
      from: 'Another St', to: 'Western Distributor Fwy',
      grade: 'A', grades: [
        OpenStruct.new(grade: 'A', type: 'Cornering', reason: 'Reason'),
        OpenStruct.new(grade: 'A', type: 'Acceleration', reason: 'Reason')
        ]
      ), OpenStruct.new(
      from: 'Western Distributor Fwy', to: 'Miller St',
      grade: 'C', grades: [
        OpenStruct.new(grade: 'C', type: 'Cornering', reason: 'Reason'),
        OpenStruct.new(grade: 'C', type: 'Acceleration', reason: 'Reason')
        ]
      )
    ]
  end
end