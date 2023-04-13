# frozen_string_literal: true

class API < Sinatra::Base
  def initialize(ledger: Ledger.new)
    # storage to keep an expense history
    @ledger = ledger
    super() # rest of initialization from Sinatra
  end
end

app = API.new(ledger: Ledger.new)

# Psuedocode for what happens inside the API class:
result = @ledger.record({ 'some' => 'data' })
result.success? # => a Boolean
result.expense_id # => a number
result.error_message # => a string or nil