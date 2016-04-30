# class that joins customer and product, letting you know which customers have purchased which transactions.
class Transaction
    attr_reader :id, :customer, :product

    @@id = 1
    @@transactions= []

# need to initialize with an id that increments with each transaction
  def initialize(customer, product)
    @customer= customer
    @product= product
    # @@transactions << self
    add_to_transactions
    @id = @@id
    @@id += 1
    product.purchased
  end

  def self.all
    @@transactions
  end

  def self.find_by_transaction(id)
    # to help you quickly return a single transaction based on its name
    @@transactions.find { |transaction| transaction.id == id }
  end

  def add_to_transactions
    if product.in_stock? == true
      @@transactions << self
    else
      raise OutofStockError, "'#{product}' is out of stock"
    end
  end

end
