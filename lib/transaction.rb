# class that joins customer and product, letting you know which customers have purchased which transactions.
class Transaction(Customer, Product)
  @@transactions = []
    attr_reader :id

# need to initialize with an id that increments with each transaction
  def initialize(options={})
    @@transactions << self
  end

  def self.all
    @@transactions
  end

  def customer
    # instance method should return Customer object
  end

  def product
    # instance method should return Product object
  end

  def purchase
    # created a new Transaction object
    # whenever there is a transaction the stock of product should automatically decrease by 1
  end

  def find_by_title
    # to help you quickly return a single product based on its title
  end

  private

  def add_to_transactions
    # return error message "OutOfStockError: 'LEGO Firehouse Headquarter' is out of stock."
    @@transactions << self
  end
end
