module PaymentRails
  class Payment
    attr_accessor :id, :status, :isSupplyPayment, :returnedAmount, :returnedReason, :sourceAmount, :sourceCurrency, :targetAmount, :targetCurrency, :exchangeRate, :fees, :recipientFees, :fxRate, :memo, :externalId, :processedAt, :createdAt, :updatedAt, :merchantFees, :compliance, :payoutMethod, :recipient, :withholdingAmount, :withholdingCurrency, :equivalentWithholdingAmount, :equivalentWithholdingCurrency, :methodDisplay, :batch, :coverFees, :category, :amount, :currency, :taxReportable, :taxBasisAmount, :taxBasisCurrency, :tags, :account, :initiatedAt, :settledAt, :returnedAt, :failureMessage, :merchantId
  end
end
