require_relative 'parkingticket'
require_relative 'cost_data'
require 'json'
require 'open-uri'
require 'pry'


class ParkingTickets
  attr_reader :tickets, :cost_data

  def initialize(args={})
    @tickets = []

  end


  def parse(plate)
    JSON.parse(open("https://data.cityofnewyork.us/resource/avxe-2nrn.json?plate_id=#{plate}").read)
  end

  def add_tickets(ticket_data)
    ticket_data.each do |ticket|
      # binding.pry
      tickets << ParkingTicket.new({
        issue_date: ticket["issue_date"],
        plate_id: ticket["plate_id"],
        summons_number: ticket["summons_number"],
        violation_code: ticket["violation_code"],
        violation_description: ticket["violation_description"]
         })
    end
  end




end
