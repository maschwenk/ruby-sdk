module PaymentRails
  class BatchSummary
    attr_accessor :id, :amount, :completedAt, :createdAt, :currency, :description, :sentAt, :status, :totalPayments, :updatedAt, :methods, :detail, :total
  end
end