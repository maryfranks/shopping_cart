class Product

  attr_accessor :name, :base_price, :tax_rate

# ======================= Initialize =======================

  def initialize(name, base_price, tax_rate)
    @name        = name
    @base_price  = base_price
    @tax_rate    = tax_rate
  end

# ===================== Class Methods ======================



# ==================== Instance Methods =====================

  def total_price
    total_price = @base_price + (@base_price * @tax_rate)
    total_price.round(2)
  end

end
