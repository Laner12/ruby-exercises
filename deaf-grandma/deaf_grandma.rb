require "pry"
class DeafGrandma

  def initialize
    @ready_to_quit = false
    @counter = 0
  end

  puts "HEY KID!"
  until @ready_to_quit
    @input = gets
    if @input == nil
      puts "WHAT?!"
    elsif @input != @input.upcase
      puts "SPEAK UP, KID!"
    elsif @input.upcase == "GOODBYE!"
      @counter += 1
      puts "LEAVING SO SOON?"
    elsif @counter == 2
      puts "LATER, SKATER!"
      @ready_to_quit = true
    else @input == @input.upcase
      puts "NO, NOT SINCE 1946!"
    end
  end
end
