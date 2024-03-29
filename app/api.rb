# frozen_string_literal: true
require 'sinatra/base'
require 'json'

module ExpenseTracker
  class API < Sinatra::Base
    post '/expenses' do
      expense = JSON.parse(request.body.read)
      result = @ledger.record(expense)
      JSON.generate('expense_id' => result.expense_id)
    end

    get '/expenses/:date' do
      JSON.generate([])
    end
  end
end