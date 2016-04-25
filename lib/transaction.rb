# class that joins customer and product, letting you know which customers have purchased which transactions.
class Transaction
    attr_reader :id

    @@id = 1
    @@transactions= []

# need to initialize with an id that increments with each transaction
  def initialize(customer, product)
    @id = @@id
    @@id += 1
    @customer= customer
    @product= product
    product.purchased
    @@transactions << self
  end

  def self.all
    @@transactions
  end

  def customer # instance method returns Customer object
    @customer
  end

  def product# instance method returns Product object
    @product
  end

  def self.find_by_transaction(id)
    # to help you quickly return a single customer based on its name
    @@transactions.find { |transaction| transaction.id == id }
  end


end
