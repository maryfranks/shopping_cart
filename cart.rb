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

  def select_product(name)
    @products.each do |item|
      if item.name == name
        return item
      end
    end
  end

  def remove_product(name)
    unwanted_product = self.select_product(name)
    @products.delete(unwanted_product)
    @products
  end

end
