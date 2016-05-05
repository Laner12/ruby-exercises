class Appointments
  def initialize
    @slots = []
  end

  def earliest
    @slots.min_by do |time_slot|
      time_slot
    end
  end

  def at(time_slot)
    @slots << time_slot
  end
end
