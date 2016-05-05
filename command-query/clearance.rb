class Clearance
  def initialize
    @clearance = []
  end

  def best_deal
    return nil if @clearance.empty?
    @clearance.max_by do |item|
      item.percent
    end.name
  end

  def <<(item)
    @clearance << item
  end
end
