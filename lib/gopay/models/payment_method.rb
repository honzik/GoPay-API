require "savon"

Savon.configure { |config| config.log = false }

module GoPay
  class PaymentMethod

    attr_reader :code, :offline, :payment_method, :logo

    def initialize(attributes = {})
      attributes.each do |key, value|
        instance_variable_set(:"@#{key}", value) if self.respond_to?(key)
      end
    end

    def self.all
      client = Savon::Client.new GoPay.configuration.urls["wsdl"]
      client.http.auth.ssl.verify_mode = :none
      response = client.request("paymentMethodList")
      response.to_hash[:payment_method_list_response][:payment_method_list_return][:payment_method_list_return].map do |item|
        PaymentMethod.new(item)
      end
    end

  end
end
