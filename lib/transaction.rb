# class that joins customer and product, letting you know which customers have purchased which transactions.
class Transaction
    attr_reader :id, :customer, :product

    @@id = 1
    @@transactions= []

# need to initialize with an id that increments with each transaction
  def initialize(customer, product)
    @id = @@id
    @@id += 1
    @customer= customer
    @product= product
    product.purchased
    customer_purchase
    @@transactions << self
  end



  def self.all
    @@transactions
  end

  def self.find_by_transaction(id)
    # to help you quickly return a single transaction based on its name
    @@transactions.find { |transaction| transaction.id == id }
  end

  private
  def customer_purchase
    if product.in_stock? == false
      raise OutOfStockError "'#{product.title}' is out of stock"
    else
      Transaction.new(self, product)
    end
  end
end
