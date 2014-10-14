class Driver
  def self.all
    [
      OpenStruct.new(name: 'Tim', car: 'A5 Sportsback', grade: 'A+', trips: '14,210'),
      OpenStruct.new(name: 'Annonymous', car: 'R8', grade: 'A+', trips: '10,810'),
      OpenStruct.new(name: 'Jane', car: 'SQ5 TDI', grade: 'A+', trips: '2,410'),
      OpenStruct.new(name: 'Jonny', car: 'RS 5 Coupé', grade: 'A+', trips: '5,410'),
      OpenStruct.new(name: 'Kathy', car: 'TT Coupé', grade: 'A', trips: '3,110')
    ]
  end
end