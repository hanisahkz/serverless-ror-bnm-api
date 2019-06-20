module ApplicationHelper
  def check_and_assign_country_name(currency_code)
    case currency_code
    when 'aud'
      'Australia'
    when 'cad'
      'Canada'
    when 'eur'
      'European Union'
    when 'gbp'
      'United Kingdom'
    when 'jpy'
      'Japan'
    when 'sgd'
      'Singapore'
    when 'usd'
      'United States'
    else
      'Not available'
    end
  end

  def check_and_assign_flag(currency_code)
    case currency_code
    when 'aud'
      'flag-icon-au'
    when 'cad'
      'flag-icon-ca'
    when 'eur'
      'flag-icon-eu'
    when 'gbp'
      'flag-icon-gb'
    when 'jpy'
      'flag-icon-jp'
    when 'sgd'
      'flag-icon-sg'
    when 'usd'
      'flag-icon-us'
    else
      'flag-icon-not-available'
    end
  end

  def check_and_prepend_http(url)
    url.start_with?('www') ? 'http://' << url : url
  end
end
