class ApisController < ApplicationController
  BASE = 'https://api.bnm.gov.my/public/'.freeze

  # todo: need to handle connection time out
  # if timeout, request user to refresh page,
  # if still doesn't refresh, maybe prompt user to view the last cached page?
  def index
    get_exchange_rates
    get_consumer_alert
  end

  private

  def get_exchange_rates
    response = Faraday.get(BASE + 'exchange-rate') do |faraday|
      faraday.headers['Accept'] = 'application/vnd.BNM.API.v1+json'
    end
    @exchange_rate_json = JSON.parse(response.body)
    @date_last_updated = @exchange_rate_json['meta']['last_updated'].to_time.strftime('%b %d, %Y')
  end

  def get_consumer_alert
    response = Faraday.get(BASE + 'consumer-alert') do |faraday|
      faraday.headers['Accept'] = 'application/vnd.BNM.API.v1+json'
    end
    @consumer_alert_json = JSON.parse(response.body)
  end
end