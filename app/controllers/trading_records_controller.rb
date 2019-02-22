class TradingRecordsController < ApplicationController
  layout 'home'

  def index
    @trading_records = TradingRecord.all
  end

  def new
    @trading_record = TradingRecord.new
    @commodities = Commodity.all
    @employees = Employee.all
  end
end
