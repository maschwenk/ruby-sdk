module PaymentRails
  class Batch
    attr_accessor :id, :amount, :completedAt, :createdAt, :currency, :description, :sentAt, :status, :totalPayments, :updatedAt, :quoteExpiredAt, :payments, :tags, :coverFees
    attr_writer :id, :amount, :completedAt, :createdAt, :currency, :description, :sentAt, :status, :totalPayments, :updatedAt, :quoteExpiredAt, :payments, :tags, :coverFees
  end
end
