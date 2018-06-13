module ApplicationHelper
  DATE_FORMAT = '%d %b %Y'.freeze
  DATE_TIME_FORMAT = '%d %b %Y, %r'.freeze

  def alert_type(alers)
    if alers.to_s == 'alert'
      'warning'
    elsif alers.to_s == 'notice'
      'success'
    else
      alers.to_s
    end
  end
end
