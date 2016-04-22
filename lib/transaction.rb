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
    @@transactions << self
  end

  def self.all
    @@transactions
  end

  def customer
    # instance method should return Customer object
    @customer
  end

  def product
    # instance method should return Product object
    @product
  end

  def customer_purchase(toy)
    p "hi"
    #  must have created a new Transaction object.
  end

end
