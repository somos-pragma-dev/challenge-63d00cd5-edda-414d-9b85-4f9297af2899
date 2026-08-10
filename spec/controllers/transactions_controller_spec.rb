class TransactionService
  def self.create_transaction(params)
    transaction = Transaction.new(params)
    if transaction.save
      transaction
    else
      raise 'Transaction could not be created'
    end
  end

  def self.update_transaction(transaction, params)
    transaction.update(params)
  end

  def self.delete_transaction(transaction)
    transaction.destroy
  end
end