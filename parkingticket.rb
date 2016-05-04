class ParkingTicket

  attr_reader :issue_date, :plate_id, :summons_number, :violation_code, :violation_description

  def initialize(args={})
      # binding.pry
    @issue_date = args[:issue_date]
    @plate_id = args[:plate_id]
    @summons_number = args[:summons_number]
    @violation_code = args[:violation_code]
    @violation_description = args[:violation_description]
  end




end
