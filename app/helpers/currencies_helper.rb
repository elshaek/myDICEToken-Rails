module CurrenciesHelper
  def eth_usd
    @api_key = ENV['ETHERSCAN_API_KEY']
    url = URI("https://api.etherscan.io/api?module=stats&action=ethprice&apikey=#{@api_key}")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)

    response = JSON.parse(http.request(request).read_body)
    response['result']['ethusd']
  end

  def eth_idr
    url = URI("https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=IDR")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)

    response = JSON.parse(http.request(request).body)
    response['IDR']
  end
end
