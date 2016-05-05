require 'pry'

class View

  def welcome

    puts "Vroom vroom! Got parking tickets?\n\n"
  end

  def get_plate
    puts "Enter your plate number: \n\n"
    plate = gets.chomp
  end

  def print_ticket_info(parking_tickets, cost)
    if parking_tickets.length > 0
      puts "You have #{parking_tickets.length} parking tickets.\n\n"
      parking_tickets.each do |ticket|
        puts "- Dang! You got a ticket on #{ticket['issue_date']} for #{ticket['violation_description']} (violation code #{ticket['violation_code']}). Your summons is #{ticket['summons_number']}."
        tick_cost= cost["#{ticket['violation_code']}"]
            if tick_cost != nil
          puts "That's gonna cost you #{tick_cost}"
        else puts "Ticket cost not found"
        end
     end
     if parking_tickets.length > 3 && parking_tickets.length < 6
        puts "Be more careful!"
     elsif parking_tickets.length >= 7
        puts "Get off the road, man!"
      end
    else
      puts "Congratulations! You do not have any parking tickets - drive safe!"
    end
  end

end
