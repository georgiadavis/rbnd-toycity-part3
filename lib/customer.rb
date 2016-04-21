class Customer
  @@customers = []
    attr_reader :name

  def initialize(options={})
    @name= options[:name]
    add_to_customers
  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
    # to help you quickly return a single customer based on its name
    @@customers.find { |customer| customer.name == name }
  end

  def customer_purchase(toy)
    # created a new Transaction object
    p"hi!"
    # whenever there is a transaction the stock of product should automatically decrease by 1
  end

  private

  def add_to_customers
    # return error message "This customer already exists. (DuplicateCustomerError)"
    if @@customers.map { |customer| customer.name }.include? @name
      raise DuplicateProductError, "'#{name}' customer already exists"
    else
      @@customers << self
    end
  end
end
