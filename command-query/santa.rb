class Santa
  def initialize
    @fits = true
    @count = 0
  end

  def fits?
    if @count > 2
      @fits = false
    else
      @fits
    end
  end

  def eats_cookies
    @count += 1
  end
end
