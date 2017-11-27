class TokensController < ApplicationController
  def details
    url = URI("https://min-api.cryptocompare.com/data/price?fsym=DICE&tsyms=ETH%2CUSD%2CIDR")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)

    response = JSON.parse(http.request(request).read_body)
    @eth = response['ETH']
    @usd = response['USD']
    @idr = response['IDR']
  end
end
