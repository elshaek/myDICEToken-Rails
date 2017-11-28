class CurrenciesController < ApplicationController
  include CurrenciesHelper

  def usd
    @ethusd = eth_usd
  end

  def idr
    @ethidr = eth_idr
  end

  def request_info
    @ethidr_rate = usd
    @ethusd_rate = idr

    respond_to do |format|
      format.json { render json: {ethidr_rate: @ethidr_rate, ethusd_rate: @ethusd_rate}}
    end
  end
end
