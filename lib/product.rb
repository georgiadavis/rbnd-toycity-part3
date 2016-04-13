class Product
  attr_reader :title, :price, :stock
  # When instantiating a new product it will add itself to a class variable @@products
  # which is an array @@products will always contain all existing products
  @@products = []

  def initialize(options={})
    @title = options[:title]
    add_to_products
  end
  # The self.all method simply returns the @@products array
  def self.all
    @@products
  end

  def in_stock?
    # return true or false if item is in stock or not
    # return an array of products with stock greater than zero.
  end

  def find_by_title
    # to help you quickly return a single product based on its title
  end

  private

  def add_to_products
    # if product already exists:
    raise DuplicateProductError, "'#{title}' toy already exists"
    # else add product to array
    @@products << self
  end
end
