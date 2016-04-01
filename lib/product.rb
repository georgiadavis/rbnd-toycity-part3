class Product
  @@products = []
    attr_reader :title, :price, :stock

  def initialize(options={})
    @@products << self
  end

  def self.all
    @@products
  end

  def in_stock?
    # return true or false if item is in stock or not
  end

  private

  def add_to_products
    # return error message "This toy already exists. (DuplicateProductError)"
    @@products << self
  end
end

class Find_by_title
# to help you quickly return a single product based on its title
end
