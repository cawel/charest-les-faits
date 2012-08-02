module ApplicationHelper
  def filtering_by_reason
    !session[:filter_by_reason].nil?
  end

  def current_reason? reason
    return true if (session[:filter_by_reason].nil? && reason.nil?)
    return false if (!session[:filter_by_reason].nil? && reason.nil?)
    session[:filter_by_reason] == reason.id.to_s
  end

  def extract_website link
    no_http = link.sub(/^http:\/\//,'').sub(/[w.]*/,'')
    no_slashes = no_http.sub(/\/.*/, '')
  end

  def analytics_tracking_code
    ENV['ANALYTICS_TRACKING_CODE']
  end

  def current_url
    "http://#{request.host}#{request.fullpath}"
  end

end
