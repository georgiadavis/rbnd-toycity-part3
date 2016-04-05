class Customer
  @@customers = []
    attr_reader :title, :price, :stock

  def initialize(options={})
    @@customers << self
  end

  def self.all
    @@customers
  end

  def in_stock?
    # return true or false if item is in stock or not
    # return an array of customers with stock greater than zero.
  end

  def find_by_name
    # to help you quickly return a single customer based on its title
  end

  private

  def add_to_customers
    # return error message "This customer already exists. (DuplicateCustomerError)"
    @@customers << self
  end
end
