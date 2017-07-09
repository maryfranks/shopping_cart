require_relative 'product.rb'

class Cart

# ======================= Initialize =======================

  def initialize
    @products = []
  end

# ===================== Class Methods ======================

# ==================== Instance Methods =====================

  def add_product(name, base_price, tax_rate)
    @products << Product.new(name, base_price, tax_rate)
    return @products.last 
  end

end
