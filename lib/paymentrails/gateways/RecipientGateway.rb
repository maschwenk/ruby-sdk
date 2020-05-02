require_relative '../Client.rb'
require_relative 'GatewayHelper'

module PaymentRails
  class RecipientGateway
    include GatewayHelper

    def initialize(client)
      @client = client
    end

    def find(recipient_id)
      response = @client.get('/v1/recipients/' + recipient_id)
      recipient_builder(response)
    end

    def create(body)
      response = @client.post('/v1/recipients/', body)
      recipient_builder(response)
    end

    def update(recipient_id, body)
      @client.patch('/v1/recipients/' + recipient_id, body)
      true
    end

    def delete(recipient_id)
      @client.delete('/v1/recipients/' + recipient_id)
      true
    end

    def search(page = 1, page_size = 10, term = '')
      response = @client.get('/v1/recipients?page=' + page.to_s + '&pageSize=' + page_size.to_s + '&search=' + term)
      recipient_list_builder(response)
    end

    def recipient_builder(response)
      recipient = Recipient.new
      data = JSON.parse(response)
      data.each do |key, value|
        next unless key === 'recipient'
        loosely_hydrate_model(recipient, value)
      end
      recipient
    end

    def recipient_list_builder(response)
      recipients = []
      data = JSON.parse(response)

      data.each do |key, value|
        next unless key === 'recipients'
        value.each do |newKey, _newValue|
          recipient = loosely_hydrate_model(Recipient.new, newKey)
          recipients.push(recipient)
        end
      end
      recipients
    end
  end
end