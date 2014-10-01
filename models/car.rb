class Car
  # def self.models
  #   [ 'A1', 'A3', 'A4', 'A5', 'A6', 'A7' , 'A8', 'Q3', 'Q5', 'Q7', 'R8', 'RS 4', 'RS 5', 'RS 6', 'RS 7', 'RS Q3', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'SQ5', 'TT', 'TT RS', 'TTS' ]
  # end

  def self.models
    {
      'A1' => [ 'Sportsback' ],
      'A3' => [ 'e-tron', 'Sedan', 'Cabriolet', 'Sportsback' ],
      'A4' => [ 'Sedan', 'Avant', 'Allroad quattro' ],
      'A5' => [ 'Coupé', 'Cabriolet', 'Sportback' ],
      'A6' => [ 'Sedan', 'Avant', 'Allroad quattro' ],
      'A7' => [ 'Sportsback' ],
      'A8' => [ 'Standard', 'L' ],
      'Q3' => [ 'Standard', 'RS' ],
      'Q5' => [ 'Standard' ],
      'Q7' => [ 'Standard' ]
    }
  end
end