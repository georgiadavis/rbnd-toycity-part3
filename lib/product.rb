class Product
  attr_reader :title, :price
  attr_accessor :stock
  # When instantiating a new product it will add itself to a class variable @@products
  # which is an array @@products will always contain all existing products
  @@products = []

  def initialize(options={})
    @title = options[:title]
    @price = options[:price]
    @stock = options[:stock]
    add_to_products
  end
  # The self.all method simply returns the @@products array
  def self.all
    @@products
  end

  def self.in_stock
    # return an array of products with stock greater than zero.
    @@products.select {|product| product.stock > 0}
  end

  def in_stock?
    # return true or false if item is in stock or not
    @stock > 0
  end

  def self.find_by_title(title)
    @@products.find { |product| product.title == title}
  end

  def purchased
    self.stock -= 1
  end

  def restock(amount)
    @stock += amount
  end

  private

  def add_to_products
    if @@products.map { |product| product.title }.include? @title
      raise DuplicateProductError, "'#{title}' toy already exists"
    else
      @@products << self
    end
  end
end
